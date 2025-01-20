#!/bin/bash

# Translates a letter into a clear-code word for communicating
# the letters of the Roman alphabet.

length=${#1}
for ((i=0; i < $length; i++ )); do
    letter=${1:i:1}
    case $letter in
      (A | a) echo "alpha";;
      (B | b) echo "bravo";;
      (C | c) echo "charlie";;
      (D | d) echo "delta";;
      (E | e) echo "echo";;
      (F | f) echo "foxtrot";;
      (G | g) echo "golf";;
      (H | h) echo "hotel";;
      (I | i) echo "india";;
      (J | j) echo "juliett";;
      (K | k) echo "kilo";;
      (L | l) echo "lima";;
      (M | m) echo "mike";;
      (N | n) echo "november";;
      (O | o) echo "oscar";;
      (P | p) echo "papa";;
      (Q | q) echo "quebec";;
      (R | r) echo "romeo";;
      (S | s) echo "sierra";;
      (T | t) echo "tango";;
      (U | u) echo "uniform";;
      (V | v) echo "victor";;
      (W | w) echo "whiskey";;
      (X | x) echo "x-ray";;
      (Y | y) echo "yankee";;
      (Z | z) echo "zulu";;
    esac
done
