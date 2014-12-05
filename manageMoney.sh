#!/bin/bash
# to enter money in your db  :: cost - comment							%001
# #short so I can set the command of mysql immediately					%002
# to get the state of my money											%003


#	%002
alias msql='mysql -u nonickn -p0000 -s db_study -e'
#	%001
if [ -z "$1" ]
then
	echo '	
--add: to add some cost of money
	ex: this_ --add 200 "did something"


	'
	else
		echo ''

fi


#	%001
if [ "$1" == '--add' ]
then
	#	$2 is for the cost
	#	$3 is for the comment, comment about the action
	if [ "$2" ] && [ "$3" ]
	then
		msql "insert into money_in (cost, comment) values ($2, '$3');"
		mysql -u nonickn -p0000 -s db_study -e "insert into money_in (cost, comment) values ($2, '$3');"
	else
		echo "ur arguments are not enough"
		echo '	$2: for the cost'
		echo '	$3: for the comment'
	fi
#	%003
elif [ "$1" == '--sel_money_state' ] || [ "$1" == '-sm' ]
then
	mysql -u nonickn -p0000 -s db_study -e "select * from money_state where id_money_state=(select max(id_money_state) from money_state);"

elif [ "$1" == '--move' ] || [ "$1" == '-mv' ]
then
	#	$2 is for the cost
	#	$3 is for the comment, comment about the action
	if [ "$2" ] && [ "$3" ]
	then
		mysql -u nonickn -p0000 -s db_study -e "insert into money_out (cost, comment) values ($2, '$3');"
	else
		echo "ur arguments are not enough"
		echo '	$2: for the cost'
		echo '	$3: for the comment'
	fi
fi
