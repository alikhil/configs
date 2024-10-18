#!/bin/bash

FILE=$1

if test -e $FILE -a $(file -b --mime-type $FILE) = "image/png"; then
  echo 'PNG file'
fi
