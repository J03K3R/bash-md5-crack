#!/bin/bash
echo -e "
 ▄▄▄▄    ▄▄▄        ██████  ██░ ██     ▄▄▄▄    ██▀███  ▓█████ ▄▄▄       ██ ▄█▀▓█████  ██▀███  
▓█████▄ ▒████▄    ▒██    ▒ ▓██░ ██▒   ▓█████▄ ▓██ ▒ ██▒▓█   ▀▒████▄     ██▄█▒ ▓█   ▀ ▓██ ▒ ██▒
▒██▒ ▄██▒██  ▀█▄  ░ ▓██▄   ▒██▀▀██░   ▒██▒ ▄██▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓███▄░ ▒███   ▓██ ░▄█ ▒
▒██░█▀  ░██▄▄▄▄██   ▒   ██▒░▓█ ░██    ▒██░█▀  ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▓██ █▄ ▒▓█  ▄ ▒██▀▀█▄  
░▓█  ▀█▓ ▓█   ▓██▒▒██████▒▒░▓█▒░██▓   ░▓█  ▀█▓░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ █▄░▒████▒░██▓ ▒██▒
░▒▓███▀▒ ▒▒   ▓▒█░▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒   ░▒▓███▀▒░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒ ▒▒ ▓▒░░ ▒░ ░░ ▒▓ ░▒▓░
▒░▒   ░   ▒   ▒▒ ░░ ░▒  ░ ░ ▒ ░▒░ ░   ▒░▒   ░   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░ ░▒ ▒░ ░ ░  ░  ░▒ ░ ▒░
 ░    ░   ░   ▒   ░  ░  ░   ░  ░░ ░    ░    ░   ░░   ░    ░    ░   ▒   ░ ░░ ░    ░     ░░   ░ 
 ░            ░  ░      ░   ░  ░  ░    ░         ░        ░  ░     ░  ░░  ░      ░  ░   ░     
      ░                                     ░                                                 
"
# The hash you want to crack.

VAR2="13c710f7d9d2f13543172f90750c415f  -"

# Loops through wordlist.
cat wordlist.txt | while read line 
do
   echo "Trying $line"
   
# Converts line from wordlist to MD5 hash. 
   VAR1="$(echo -n "$line" | md5sum)"
   
# Compares user supplied hash with hash generated from wordlist.
# If hashes match then echo correct password.
# If hashes dont match then echo incorrect password.

   	if [ "$VAR1" = "$VAR2" ]; then
    		echo $i " IS THE CORRECT PASSWORD ✓✓✓"
		break
	else
    		echo $i " INCORRECT PASSWORD ✕✕✕"
	fi
done

# -To Do-
# 1 - Allow users to input hash value rather than editing code.
# 2 - Allow users to input wordlist rather than editing code.
# 3 - Properly format hashes using awk or something.
# 4 - Build other hash crack functions like sha1.

