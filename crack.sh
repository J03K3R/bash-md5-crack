#!/bin/bash
VAR2="13c710f7d9d2f13543172f90750c415f  -"
cat wordlist.txt | while read line 
do
   	echo "Trying $line"
   	VAR1="$(echo -n "$line" | md5sum)"
	if [ "$VAR1" = "$VAR2" ]; then
    	echo $i " IS THE CORRECT PASSWORD ✓✓✓"
	break
	else
    	echo $i " INCORRECT PASSWORD ✕✕✕"
	fi
done
