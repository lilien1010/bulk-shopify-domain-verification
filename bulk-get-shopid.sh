#!/bin/bash

(cat $1;echo) | while read line
do
  curl --max-time 15  -s -I ${line} | grep "X-ShopId:" | awk -v line="$line"  '{print line,$2}'
done
