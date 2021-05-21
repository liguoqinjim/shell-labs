#!/bin/bash

# 合并两个csv
awk '(NR == 1) || (FNR > 1)' data/*.csv > test.csv

awk '(NR == 1) || (FNR > 1)' data/1.csv data/2.csv > test2.csv