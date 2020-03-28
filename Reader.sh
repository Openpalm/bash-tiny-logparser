#!/bin/bash 

#process log 
infile=log
tmpfile=tmp
outfile=hosts
proc=$(cat $infile | cut -d$'\n' -f1 | cut -d' ' -f1 -f4 >> $tmpfile)

mkdir -p ./out
# read & write to out
while read host addr
do 
  echo ${addr} >> out/$host.gifsList
done < "${tmpfile}"

# cleanup
rm $tmpfile
