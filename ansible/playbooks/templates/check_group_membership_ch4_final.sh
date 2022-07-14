#!/usr/bin/env bash
# @author: Helvecio Neto <helveciofneto@gmail.com>
# @description: This module checks if a specified user is member of a specified group.

####################################
#GLOBAL VARIABLES

#Source from Ansible Module
#This "imports" the module variables into the script.
if test ! -z "${1}"; then
  . "${1}"
fi

#Set module variables' default values
user="${user:-}"
group="${group:-}"
behavior="${behavior:-inform}"
behavior="$(printf "%s" "${behavior}"| tr "[:upper:]" "[:lower:]")"
export user
export group
export behavior

#Ansible variables
#---------------------
CHANGED='false'
FAILED='false'
MSG=''
export CHANGED
export FAILED
export MSG
#----------------------

#Other variables
RETURNCODE=''
export RETURNCODE

####################################
#FUNCTIONS

## @fn validate_vars()
## @brief Validates required variables
## @details Validates required variables
## @retval 0 (Success) or !0 (Failure)
validate_vars(){
  RETURNCODE=0
  #user
  if test -z "${user}"; then
    RETURNCODE=1
    FAILED='true'
    MSG="ERROR - User was not specified."
  fi
  #group
  if test -z "${group}"; then
    RETURNCODE=2
    FAILED='true'
    MSG="ERROR - Group was not specified."
  fi
  #behavior
  if test "${behavior}" != "inform" -a "${behavior}" != "fail"; then
    RETURNCODE=3
    FAILED='true'
    MSG="ERROR - Valid values for Behavior are Inform or Fail."
  fi
  return ${RETURNCODE}
}

## @fn check_group_membership()
## @brief Checks if a user is part of a group
## @details Checks if a specified user is a member of a specified group
## @retval 0 (User is member of group) or !0 (User is NOT member of group or another error occurred)
check_group_membership(){
  #get groups list (or error message)
  MSG="$(id -nG "${user}" 2>&1)"
  RETURNCODE="${?}"
  if test "${RETURNCODE}" -eq "0"; then
    #id -nG command ok; search for specified group.
    printf "%s" "${MSG}" |  grep -q -E "(^| )${group}($| )"
    RETURNCODE="${?}"
    if test "${RETURNCODE}" -eq "0"; then
      #User found within group.
      MSG="User ${user} is a member of group ${group}."
    else
      #User NOT found in group.
      if test "${behavior}" = "fail"; then
        FAILED='true'
      fi
      MSG="User ${user} is NOT a member of group ${group}."
    fi
  else
    #id -nG command failed; report error message.
    FAILED='true'
    if test -z "${MSG}"; then
      #If empty, write standard error message.
      MSG="And error has occurred when gathering group information."
    fi
  fi
  return ${RETURNCODE}
}
####################################
#MAIN
main(){
  if validate_vars >/dev/null 2>&1; then
    check_group_membership >/dev/null 2>&1
  fi
  #Trim double and single quotes from MSG, if any, to avoid issues when printing the JSON output.
  MSG="$(printf "%s" "${MSG}" | tr -d '"' | tr -d "'")"
  printf '{"changed": %s, "failed": %s, "msg": "%s", "rc": "%s"}\n' "${CHANGED}" "${FAILED}" "${MSG}" "${RETURNCODE}"
}
####################################
#RUN
main
####################################
