#!/bin/bash

# check sudo/root access
if [[ "${UID}" -ne 0 ]]
then
	echo "Please run with sudo or root"
	exit 1
fi

# user should provide at least one argument as username else guide him
if [[ "${#}" -lt 1 ]]
then
	echo "Usage: ${0} USER_NAME [COMMENT]...."
	echo "Create a user with name USER_NAME and add a Comment"
	exit 1
fi

# store 1st argument as user name
USER_NAME="${1}"

# In case of more than one argument, store it as acoount comment
shift
COMMENT="${@}"

# create a password
PASSWORD=$(date +%s%N)

# create the user
useradd -c "${COMMENT}" -m "${USER_NAME}"

# check if the user is successfully created or not
if [[ $? -ne 0 ]]
then
	echo "unsuccessful to create an account"
	exit 1
fi

# create a temporary password file
TEMP_PASSWD_FILE=$(mktemp)

# write the user:password entry to the temporary password file
echo "${USER_NAME}:${PASSWORD}" > "${TEMP_PASSWD_FILE}"

# set the password for the user using the temporary password file
chpasswd < "${TEMP_PASSWD_FILE}"

# check if the password is succcessfully set or not
if [[ $? -ne 0 ]]
then
	echo "Password could not be set"
	exit 1
fi
# remove the temporary password file
rm "${TEMP_PASSWD_FILE}"

# force to change the password on first login
passwd -e $USER_NAME

# display the username, password and the host 
echo
echo "Username: $USER_NAME"
echo
echo "Password: $PASSWORD"
echo
echo "Hostname:" $(hostname)

