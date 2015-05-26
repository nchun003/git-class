# using the scripts

## checksyscalls.sh
The `checksyscalls.sh` script allows a simple way for the user to check if they have correctly error checked all their syscalls. 
The checking can be started by running:
```
$ checksyscalls.sh filename
```
After this command is entered every syscall and error check along with the line number will be listed.
At the end you will find a summary of the number of syscalls, number of perrorr and the grade modifier.
This script can also be ran on directories, but keep in mind that it will check every `.file`.

## calcgrade.sh
The `calcgrade.sh` script displays your updated grades.
It is ran by typing:
```
$ calcgrade.sh
```
Displayed will be all the grades along with your current grade percentage and an overall grade percentage.  
