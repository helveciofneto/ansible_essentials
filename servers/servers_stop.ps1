#!powershell
#Requires -Version 2.0
# @author: Helvecio Neto <helveciofneto@gmail.com>

# This script assumes Vagrant is properly installed and configured.
$separator="#" * 60

# Change to script's current directory, in case it was called from another one.
# Ref: https://stackoverflow.com/questions/4724290/powershell-run-command-from-scripts-directory
$scriptpath = $MyInvocation.MyCommand.Path
$scriptdir = Split-Path $scriptpath
Set-Location $scriptdir

Write-Output $separator "controlserver:" $separator
Set-Location ./controlserver
vagrant halt

Write-Output $separator "linuxserver01:" $separator
Set-Location ../linuxserver01
vagrant halt

Write-Output $separator "linuxserver02:" $separator
Set-Location ../linuxserver02
vagrant halt

Write-Output $separator "windowsserver01:" $separator
Set-Location ../windowsserver01
vagrant halt

Set-Location ..
