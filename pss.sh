#!/usr/bin/env bash


#------------------------------
# configure your params here...
#------------------------------
dirPath="$HOME/ps-traces"
appendix="$(date +'%F__%H-%M-%S')"
prefix=""





#------------------------------
# now the script itself, you shouldn't edit below this line...
#------------------------------
# https://github.com/lingtalfi/bash-functions-library#ismac
function isMac {
	if [ -d "/Volumes" ]; then
		echo "true"
	else
		echo "false"
	fi
}

# user arguments override...
if [ -n "$1" ]; then
	prefix="$1-"
fi

# create the ps-traces dir if it doesn't exist already
if ! [ -d  "$dirPath" ]; then
	mkdir -p "$dirPath"
fi

filePath="$dirPath/pss-$prefix$appendix.txt"
sudo ps -e > "$filePath"


if [ "true" = "$(isMac)" ]; then
	open "$dirPath"
fi







