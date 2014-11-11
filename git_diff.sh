#!/bin/bash

if [[ -n "$1" ]]
then
	git diff
else
	echo 'to see the differences between the last commit '
	echo '	and what is changed right now'
	echo ''
	echo '	ex	:	this.	nonSense'
fi
