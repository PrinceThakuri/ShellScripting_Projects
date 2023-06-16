#!/bin/bash
#$Revision:001$
#$Fri Jun 16 11:52:45 EDT 2023

#variables
WAY=/home/deft/linux/sample_file
DAYS=20
DEPTH=1
RUN=0

#Check if the directory is present or not
if [ ! -d $WAY ]
then
	echo "directory does not exist: $WAY"
	exit 1
fi

#Create 'archive' folder if not present
if [ ! -d $WAY/archive ]
then
	mkdir $WAY/archive
fi

#Find the list of files larger than 30MB
for i in `find $WAY -maxdepth $DEPTH -type f -size +30M`
do
	if [ $RUN -eq 0 ]
	then
		echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $WAY/archive"
		gzip $i || exit 1
		mv $i.gz $WAY/archive || exit 1
	fi
done


