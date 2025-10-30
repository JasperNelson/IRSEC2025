#!/bin/bash
main_user=$(whoami)
 
while [[ 1==1 ]]; do 
	users=( $(w -h | awk '/^\w+/ {print $1}' ) )
	
	for usr in users; do 
		if [[ ! $usr -eq "$main_user" ]] || [[ ! $usr -eq "root" ]]; then
			pkill -u $usr
		fi

	done; 

done;

       	
