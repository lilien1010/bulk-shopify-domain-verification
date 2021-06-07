#!/bin/bash

cat $1 | while read line
do
  curl --max-time 15  -s -I ${line} | grep -c shopify | awk -v line="$line" '{if($1>0) print line "\tYES"; else print line "\tNO"; }'
done
