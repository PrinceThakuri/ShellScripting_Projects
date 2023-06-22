#!/bin/bash
#
# Get system information
HOSTNAME=$(hostname)
RELEASE=$(cat /etc/redhat-release)
KERNEL=$(uname -r)
USERNAME=$(whoami)

# Print system information
echo -e "
##########################
#
# Welcome to ${HOSTNAME}
# This system is running ${RELEASE}
# kernel is ${KERNEL}
#
# You are logged in as ${USERNAME}
#
##########################
