#!/bin/sh
LINECOUNT="$(wc -l < ~/notes.txt)"
LINECOUNT=$(($LINECOUNT +1))
NEWNOTE="$1"

echo -e "$LINECOUNT. $1" >> ~/notes.txt
cat ~/notes.txt

