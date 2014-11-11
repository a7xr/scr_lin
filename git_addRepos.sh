#!/bin/bash
#	progit.fr.pdf p85

if [[ $1 ]] && [[ $2 ]]
then
	git remote add "$1" git://"$2"
else
	echo 'to add a remote repo'
	echo '	$1: will be the name of the repo locally'
	echo '	$2:	is the URL of ur remote repo'
	echo
	echo '	ex :	this_ conf_vim "github.com/nonicken/conf_vim.git"'
fi
