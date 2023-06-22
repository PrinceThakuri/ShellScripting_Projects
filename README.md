# ShellScripting_Projects

# Project1- Digital Clock
This shell scripting project displays the current time in red using ANSI escape sequences. It continuously updates the time every second.

## Description

The script performs the following steps:

1. Clears the terminal screen.
2. Displays the current time in red color using ANSI escape sequences.
3. Waits for 1 second.
4. Repeats the above steps indefinitely.
To run the script, execute the following command:

## RUN
To run the script, execute the following command:

./project1_digital_clock.sh

```bash
Output:
12:34:56
```

# Project2- Archive large files 
This is a shell script that archives files larger than 30MB in a specified directory.

## Description

The script performs the following steps:

1. Checks if the specified directory exists.
2. Creates an "archive" folder within the specified directory if it doesn't already exist.
3. Finds the list of files larger than 30MB within the specified directory.
4. Archives the files by compressing them using gzip.
5. Moves the archived files to the "archive" folder.
To run the script, execute the following command:

## RUN
To run the script, execute the following command:
```bash
./project2_archive.sh
```

# Project3- User Creation Script

This is a shell script that allows you to create a new user on a Linux system with sudo/root access.

## Prerequisites

- Sudo or root access
- Bash shell


- Replace `USERNAME` with the desired username for the new user.
- Replace `COMMENT` with an optional comment for the user.

## Description

The script performs the following steps:

1. Checks if the script is run with sudo or root access.
2. Ensures that at least one argument is provided as the username.
3. Creates a password for the user using the current timestamp.
4. Creates the user with the provided username and an optional comment.
5. Sets the password for the user using the `chpasswd` command.
6. Forces the user to change the password on the first login.
7. Displays the username, password, and hostname.

## Notes

- Make sure to run the script with sudo or root access.
- Use caution when running the script, as it creates a new user with system access.

## RUN
To run the script, execute the following command:

```bash
./project3_create_user.sh [user_name] [comments-optional]
```

# Project4-Message of the Day (motd) Script

This shell script generates a customized "message of the day" for your Linux system. The motd is displayed when users log in to the system, providing them with important information or announcements.

## Description

The script performs the following tasks:

- Retrieves system-specific information such as the hostname, release information, and kernel version.
- Retrieves user-specific information such as the logged-in username.
- Generates a formatted message of the day using the retrieved information.


The generated message of the day includes a welcome message, system information, and any additional content you want to include.

## RUN
To run the script and display the customized message of the day, execute the following command:

```bash
./project4_motd.sh
```
