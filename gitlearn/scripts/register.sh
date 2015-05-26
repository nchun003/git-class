#!/bin/bash

#
# This script is used to add a new people associated to the class.
# This is assumed that the user has already have github setup
#

scriptdir=`dirname "$0"`
source "$scriptdir/config.sh"

function register_i {
    RPATH="$instructorinfo/$2"
    echo "name = $1" > $RPATH
    echo "giturl = https://github.com/$2/gitlearn_doc.git" >> $RPATH
    echo "" >> $RPATH
    echo "github = $2" >> $RPATH
    git add "$RPATH"
    git commit -q -m "automatically generated file $2"
}

function register_s {
    RPATH="studentinfo/$2"
    echo "name = $1" > $RPATH
    echo "giturl = https://github.com/$2/gitlearn_doc.git" >> $RPATH
    echo "" >> $RPATH
    echo "github = $2" >> $RPATH
    git add "$RPATH"
    git commit -q -m "automatically generated file $2"
}

clear
echo "Welcome to gitlearn_doc!"
sleep 2

# get user status, name, and github username
STATUS=0
echo "Select an option:"
echo "1. Instructor"
echo "2. Student"
while [ $STATUS -ne 1 ] && [ $STATUS -ne 2 ]; do
    read STATUS
    if [ $STATUS -ne 1 ] && [ $STATUS -ne 2 ]; then
        echo "Invalid Option"
    fi
done
sleep 1
echo "Enter your name:"
read NAME
sleep 1
echo "Enter your github username:"
read USRGIT

# register
echo "Registering $USRGIT to gitlearn..."
if [ $STATUS -eq 1 ]; then
    register_i "$NAME" "$USRGIT"
else
    register_s "$NAME" "$USRGIT"
fi
sleep 2

# push
git push origin master
sleep 2

echo "Thank you. You are now registered!"
