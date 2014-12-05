#!/bin/bash
pwd01=$(pwd) 
echo going to commit all of ur important files 
sleep 3                                       
echo       

cd $all   
git add netw.dia  
git add telec01.dia all.txt engStudying.dia     
git commit -m "commiting all important files $(date)" 
                                                       
cd                                                  
git add .vimrc                                     
git commit -m "commiting all important files $(date)" 
 
cd $home00/ms_conf/ 
git add .          
git commit -m "commiting all important files $(date)"    
                                                          
cd $home00/.vim                                        
git add .                                             
git commit -m "commiting all important files $(date)"
                                                       
cd $pwd01                                          
unset pwd01                                       
                                                     
echo               

