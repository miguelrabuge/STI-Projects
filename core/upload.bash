#!/bin/bash

# Example:          
#       bash upload.bash    folder-to-send  remote-user  remote-ip-addr (hostname -I)
# 
#       bash upload.bash         TP1/          mike           192.168.193.132   
#       bash upload.bash         TP2/         sti2022         192.168.193.132   

SEND=$1
USER=$2
RECEIVER=$3

scp -r $1 $2@$3:~/Desktop/