#!/bin/sh
# to test if tmux is running										%001
# 	if it is running												%002
# 		set nicklist in the right_up								%003
# 		set channel where I'm connected in right_down				%004
# 		run irssi in the current pane								%005
# 	ifNot															%006
# 		set new session of tmux										%007
# 		set nicklist in the right_up								%008
# 		set channel where I'm connected in right_down				%009
# 		run irssi in the current pane								%010
#
#
WNAME="irssi"
#	%001
# if $(ps -e | grep -q tmux); 
# 	#	%002	if tmux is running
# 	then
# 	echo 'tmux is running already'
# 	sleep 10
# 	#	%003
# 	tmux split-window -t ${WNAME} -h -l 20 'cat ~/.irssi/nicklistfifo'
# 	#	%004
# 	tmux split-window -t ${WNAME} -v -l 20 'perl /root/.irssi/scripts/adv_windowlist.pl'
# 	#	%005
# 	${WNAME}
# 	echo "Tmux was running."; 
# 	echo 'it is better to run this script outside of tmux'
#
# #	%006
# #	if tmux is not running
# else

	if ! tmux -L default attach-session -t ${WNAME}; then
		#	%007
    	tmux new-session -d -s ${WNAME} 'irssi'
		#	%008
		tmux split-window -t ${WNAME} -h -l 20 'cat ~/.irssi/nicklistfifo'
		#	%009
		tmux split-window -t ${WNAME} -v -l 20 'perl /root/.irssi/scripts/adv_windowlist.pl'
    	#	%010
		"${0}"
	fi
# fi


