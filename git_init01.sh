#!/bin/bash
#	http://git-scm.com/book/en/v1/Getting-Started-First-Time-Git-Setup
if [[ $1 ]] && [[ $2 ]] && [[ $3 ]] 
then
	git config --global user.name "$1"
	git config --global user.email "$2"
	git config --global core.editor "$3"
else
	echo 'to init some information($1 and $2) for the repos u just set'
	echo '	and to init the default editor($3) which u will use for conf of git'
	echo '	ex :	this_ "nonicken Schlegegen" "nonick@gmail.com" vim'
fi
