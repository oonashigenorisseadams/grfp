#!/bin/bash

for id in $(find . -name "*bed" | cut -f1 -d_ | sort | uniq); do
  cat $(find . -wholename "${id}*") > ${id}_notab.bed
  awk -F'\t' 'BEGIN {OFS = FS} {$7 = "seg"$2; print}' ${id}_notab.bed > ${id}.bed
done
