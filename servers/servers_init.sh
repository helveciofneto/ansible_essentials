#!/bin/bash

# This script assumes Vagrant is properly installed and configured.

# Change to script's current directory, in case it was called from another one.
# Ref: https://stackoverflow.com/questions/3349105/how-to-set-current-working-directory-to-the-directory-of-the-script
cd "$(dirname "${0}")"

# The additional 'vagrant halt && vagrant up' commands are needed because synced folder mounting
# may fail in the first attempt due to Guest Additions being upgraded and requiring a reboot.
printf "#%.0s" {1..60} && printf "\n"
printf "controlserver:\n"
printf "#%.0s" {1..60} && printf "\n"
cd ./controlserver && vagrant up || (vagrant halt && vagrant up)

printf "#%.0s" {1..60} && printf "\n"
printf "linuxserver01:\n"
printf "#%.0s" {1..60} && printf "\n"
cd ../linuxserver01 && vagrant up

printf "#%.0s" {1..60} && printf "\n"
printf "linuxserver02:\n"
printf "#%.0s" {1..60} && printf "\n"
cd ../linuxserver02 && vagrant up

printf "#%.0s" {1..60} && printf "\n"
printf "windowsserver01:\n"
printf "#%.0s" {1..60} && printf "\n"
cd ../windowsserver01 && vagrant up

cd ..
