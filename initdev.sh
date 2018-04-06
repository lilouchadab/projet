#!/bin/bash
if test $1 ="-help"
then 
echo "
-Author : Afficher le nom et l'email de l'auteur de l'application.
-Args : Lister les arguments et donner une description de chaque argument.
-Name : Afficher le nom de l'application et une petite description.
-Syntax : Afficher la syntaxe d'utilisation de la commande initdev.

"

else 
if test $# -gt 4

then echo "Expected arguments,please check the help : initdev -help"
exit 1

else 

mkdir $1
mkdir $1/bin
mkdir $1/licenses
mkdir $1/sources
touch $1/install.sh
touch $1/makefile
touch $1/main

if test $# -eq 2
then 

case $2 in 
-C) touch $1/main.c;;
-CPP) touch $1/main.cpp;;
-Python) touch $1/main.py;;
-GPL) echo GENERAL PUBLIC LICENSE >> $1/licenses
 touch $1/main;;
 
-MIT) echi Licence MIT >> $1/licenses
touch $1/main;;

*) echo "Arguments inconnues, consulter la section aide : intidev -help"
exit 1;;

esac 

fi 

if test $# -eq 3

then

case $2 in 
-C) touch $1/main.c;;
-CPP) touch $1/main.cpp;;
-Python) touch $1/main.py;;
-GPL) echo GENERAL PUBLIC LICENSE >> $1/licenses
 touch $1/main;;
 
-MIT) echi Licence MIT >> $1/licenses
touch $1/main;;

*) echo "Arguments inconnues, consulter la section aide : intidev -help"
exit 1;;

esac

case $3 in 
-C) touch $1/main.c;;
-CPP) touch $1/main.cpp;;
-Python) touch $1/main.py;;
-GPL) echo GENERAL PUBLIC LICENSE >> $1/licenses
 touch $1/main;;
 
-MIT) echi Licence MIT >> $1/licenses
touch $1/main;;
-git) git inti $1;;

*) echo "Arguments inconnues, consulter la section aide : intidev -help"
exit 1;;

esac

case $4 in 
-C) touch $1/main.c;;
-CPP) touch $1/main.cpp;;
-Python) touch $1/main.py;;
-GPL) echo GENERAL PUBLIC LICENSE >> $1/licenses
 touch $1/main;;
 
-MIT) echi Licence MIT >> $1/licenses
touch $1/main;;
-git) git inti $1;;

*) echo "Arguments inconnues, consulter la section aide : intidev -help"
exit 1;;

esac

fi
exit 0 


fi
fi