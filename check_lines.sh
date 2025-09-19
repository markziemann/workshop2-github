#!/bin/bash

# check whether Read 1 and 2 have same no. reads

LINES1=$(zcat 100507_R1.fq.gz | sed -n '2~4p' | wc -l )

LINES2=$(zcat 100507_R2.fq.gz | sed -n '2~4p' | wc -l)

echo $LINES1 $LINES2

if [ "$LINES1" -eq "$LINES2" ] ; then
  echo "Files have the same no. reads"
else
  stop "Error: Files have different no. reads."
fi
