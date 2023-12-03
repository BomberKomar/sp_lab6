#!/bin/bash

gcc -S main.c -o ass-optimized.s -lm -O1

gcc -S main.c -o ass-unoptimized.s -lm
