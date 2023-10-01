#!/bin/bash

input="/home/oona/nsf_grfp/filenames_tmp.txt"

while IFS= read -r line
do
  bedtools intersect -a "$line".bed -b "$line"_ibd.bed > "$line"_intersect.bed
done < "$input"
