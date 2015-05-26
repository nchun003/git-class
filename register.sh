#!/bin/bash

function register_i {
    echo "Welcome, instructor!"
    echo "Enter your name:"
    read INAME
    sleep 1
    echo "Enter your github user:"
    read IUSRGIT
    echo "name = $INAME" > ./people/instructors/$IUSRGIT
    echo "github = $IUSRGIT" >> ./people/instructors/$IUSRGIT
    sleep 2
    echo "Thank you. You are now registered!"
}

function register_s {
    echo "Welcome, student!"
    echo "Enter your name:"
    read SNAME
    sleep 1
    echo "Enter your github user:"
    read SUSRGIT
    echo "name = $SNAME" > ./people/students/$SUSRGIT
    echo "github = $SUSRGIT" >> ./people/students/$SUSRGIT
    sleep 2
    echo "Thank you. You are now registered!"
}

clear
echo "Welcome to gitlearn_doc!"
sleep 2

# get user status
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

# register
sleep 2
if [ $STATUS -eq 1 ]; then
    register_i
else
    register_s
fi
