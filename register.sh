#!/bin/bash

clear
echo "Welcome to gitlearn!"
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

# begin
if [ $STATUS -eq 1 ]; then
    # do instructor stuff
    echo "You are an instructor"
else
    # do student stuff
    echo "You are a student"
fi
