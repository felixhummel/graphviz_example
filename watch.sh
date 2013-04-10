#!/bin/bash

filename=$1
TIME="0.2"

outfile=$(basename $filename .dot).png
# http://stackoverflow.com/questions/6475252/bash-script-watch-folder-execute-command

make_png() {
  dot -Tpng $filename > $outfile
  echo -n '!'
}

old_md5=$(md5sum $filename)
new_md5=$old_md5

# build one time initially
make_png

while [[ 1 ]]; do
  echo -n '.'
  new_md5=$(md5sum $filename)
  [[ $new_md5 != $old_md5 ]] && \
    make_png && \
    old_md5=$new_md5
  sleep $TIME
done
