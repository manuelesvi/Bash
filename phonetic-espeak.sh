#!/bin/bash

# Translates input argument into a clear-code word 
# using military code in English.
#
# Result is sent to espeak TTS to produce a WAV file
length=${#1}
spell=""
for ((i=0; i < $length; i++ )); do
    letter=${1:i:1} # ${parameter:offset:length}
    # the string to the right of =~
    # is a POSIX extended regular expression
    if [[ $letter =~ [A-Z] ]]; then
      spell+="capital "
    fi
    case $letter in
      (A | a) spell+="alpha";;
      (B | b) spell+="bravo";;
      (C | c) spell+="charlie";;
      (D | d) spell+="delta";;
      (E | e) spell+="echo";;
      (F | f) spell+="foxtrot";;
      (G | g) spell+="golf";;
      (H | h) spell+="hotel";;
      (I | i) spell+="india";;
      (J | j) spell+="juliett";;
      (K | k) spell+="kilo";;
      (L | l) spell+="lima";;
      (M | m) spell+="mike";;
      (N | n) spell+="november";;
      (O | o) spell+="oscar";;
      (P | p) spell+="papa";;
      (Q | q) spell+="quebec";;
      (R | r) spell+="romeo";;
      (S | s) spell+="sierra";;
      (T | t) spell+="tango";;
      (U | u) spell+="uniform";;
      (V | v) spell+="victor";;
      (W | w) spell+="whiskey";;
      (X | x) spell+="x-ray";;
      (Y | y) spell+="yankee";;
      (Z | z) spell+="zulu";;
      *) spell+=$letter;;
    esac
    spell+=$'\n'
done
echo "$spell" | \
    espeak --punct="[]()\\^!\"#$%&/=?i.,+-_\{\}°|¬\`<>" \
           -s 90 -g 35 -w phonetic.wav
