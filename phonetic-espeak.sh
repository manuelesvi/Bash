#!/bin/bash

./phonetic ${1} | \
    espeak -s 110 -g 9 -w phonetic.wav
