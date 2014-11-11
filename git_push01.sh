#!/bin/bash
#	this is from creating a new repo at github and u have few commands which will 
#		help u to push
#	to commit and to push at the same time
#		$1: txt in commitComment
#		$2:	name of the NEW remoteRepo(at github.com)
#		$3:	link to the remoteRepo
#		$4:	name of the branch to push
if [[ $1 ]] && [[ $2 ]] && [[ $3 ]] && [[ $4 ]]
then
	git commit -m "$1"
	# git commit -m "first commit"
	git remote add "$2" "$3"
	# git remote add origin https://github.com/nonicken/conf_vim.git
	git push -u "$2" "$4"
	# git push -u origin master
else
	echo '
	this is from creating a new repo at github and u have few commands which will 
		help u to push
	to commit and to push at the same time
		$1: txt in commitComment
		$2:	name of the NEW remoteRepo(at github.com)
		$3:	link to the remoteRepo
		$4:	name of the branch to push

	ex	:	this. "first commit" "origin" "https://github.com/nonicken/conf_vim.git" "master"
				origin will be the name of that big link
				do not forget the https:// in the 2nd argument
					and there is NO www in the link
				master:	is the name of the branch to push	
	'
fi
