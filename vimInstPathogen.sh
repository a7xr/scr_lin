#!/bin/bash
# 				http://www.maketecheasier.com/8-vim-plugins-to-enhance-your-productivity/
# 	grab pathogen.vim from that above link 										%001
# 	create ~/.vim/autoload 														%002
# 	cp pathogen.vim to ~/.vim/autoload/ 										%003
# 	create ~/.vim/bundle 														%004
# 	add in ~/.vimrc 															%005
# 		call pathogen#infect()
# 		call pathogen#helptags()
# 		syntax on
# 		filetype plugin indent on
# 	then all plugin should be installed in ~/.vim/bundle

# 	%001
echo 'grab pathogen in ~/.vim/autoload/'
read

# 	%002
echo 'cp pathogen.vim inside ~/.vim/autoload/' 
read
# 	%003
#
# 	%004
echo 'create ~/.vim/bundle'
read
# 	%005
echo 'add those lines in ~/.vimrc'
echo ' 	call pathogen#infect()
	call pathogen#helptags()
	syntax on
	filetype plugin indent on'
read
