#!/bin/bash
passwords=$(pwgen -yc 16 2)

echo $passwords | sed 's/\ /\n/g'
# read -a arrPasswords <<< "$source"

