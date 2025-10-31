#!/bin/bash
main_user=$(whoami)
echo $main_user
main_user=$1
while [[ 1==1 ]]; do 
	users=( $(w -h | awk '/^\w+/ {print $1}' ) )

	for usr in ${users[@]}; do
	       echo ${usr}	
		if  [[ $usr != "$main_user" ]] && [[ $usr != "root" ]]; then
		       echo "eliminating ${usr}" >> /dev/pts/*
		       pkill -HUP -u $usr
		fi

	done; 

done;

       	
