# using the scripts

## calcgrade.sh
The `calcgrade.sh` script displays your updated grades.
It is ran by typing:
```
$ calcgrade.sh
```
Displayed will be all the grades along with your current grade percentage and an overall grade percentage.  

## checksyscalls.sh
The `checksyscalls.sh` script allows a simple way for the user to check if they have correctly error checked all their syscalls. 
The checking can be started by running:
```
$ checksyscalls.sh filename
```
After this command is entered every syscall and error check along with the line number will be listed.
At the end you will find a summary of the number of syscalls, number of perrorr and the grade modifier.
This script can also be ran on directories, but keep in mind that it will check every `.file`. 
If you have any executable files in your directory it will get checked(which you dont want). 

## register.sh
This is probably the first script you will be running, in order to register for the class.
In order to run:
```
$ register.sh
```
First, you will be asked to identify if you are an instructor or student.
Students will enter their name and github username. That is it, you are now registered!

