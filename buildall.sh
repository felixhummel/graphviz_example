#!/bin/bash
browser=chromium-browser

for infile in *.dot; do
  outfile=$(basename $infile .dot).png
  dot -Tpng $infile > $outfile
  echo "$browser $outfile"
done
