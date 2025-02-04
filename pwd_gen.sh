#!/bin/bash
# This script requires pwgen command installed on your local environment.
# It will generate 5 random passwords and let the user pick one from the menu.

passwords=$(pwgen -y 16 5)
select pwd in $passwords
do
    echo "You picked password #$REPLY."
    echo "Your password is: $pwd"
    break;
done

