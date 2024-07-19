#!/bin/bash
passwords=($(pwgen -yc 16 5))

for ((i=0; i < ${#passwords[@]}; i++))
do
    echo $((i+1)). ${passwords[i]}
done

