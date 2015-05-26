#!/bin/bash

function register_i {
    RPATH="./people/instructors/$2"
    echo "name = $1" > $RPATH
    echo "giturl = https://github.com/$2/gitlearn_doc.git" >> $RPATH
    echo "" >> $RPATH
    echo "github = $2" >> $RPATH
}

function register_s {
    RPATH="./people/students/$2"
    echo "name = $1" > $RPATH
    echo "giturl = https://github.com/$2/gitlearn_doc.git" >> $RPATH
    echo "" >> $RPATH
    echo "github = $2" >> $RPATH
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
sleep 2

# register
if [ $STATUS -eq 1 ]; then
    register_i "$NAME" "$USRGIT"
else
    register_s "$NAME" "$USRGIT"
fi

echo "Thank you. You are now registered!"
