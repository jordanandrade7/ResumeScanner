#!/bin/bash

# Filename: ex21.sh
#
# Problem: Count the number of quotes each person had in the top 100 quote
# list. Then output the list of names in alphabetical order with the number of quotes each.
cat ex21.input | awk '{;
		if (match($0,"-")) {
			name=substr($0,0,match($0,"-")-1);
			namelist[i]=name
			print name
		}
	}
	END {
			print namelist  " had " count  " quotes."
	}'
