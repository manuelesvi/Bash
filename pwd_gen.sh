#!/bin/bash
#passwords=($(pwgen -y 16 5))
#for ((i=0; i < ${#passwords[@]}; i++))

passwords=$(pwgen -y 16 5)
select pwd in $passwords
do
    #echo $((i+1)). ${passwords[i]}
    echo "You picked password #($REPLY):"
    echo $pwd
    break;
done

