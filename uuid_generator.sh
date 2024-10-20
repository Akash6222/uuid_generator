#!/bin/bash

echo "Enter the number of uuids you want: "
read count

# Remove uuids.txt if it exists
[ -f uuids.txt ] && rm uuids.txt

for ((i=1; i<=$count; i++))
do
  uuidgen >> uuids.txt
done

cat uuids.txt
