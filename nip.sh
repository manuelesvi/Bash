#!/bin/bash

# generate 2 nips for credit/debit cards
pwgen --no-capitalize \
      --remove-chars=abcdefghijklmnopqrstuvwxyz \
      4 2 # length=4, give 2 options
