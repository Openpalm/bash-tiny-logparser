#!/bin/bash 

#process log 
infile=gifLog
tmpfile=gifTmp
outfile=gifHosts
proc=$(cat $infile | cut -d$'\n' -f1 | cut -d' ' -f1 -f4 >> $tmpfile)

# read & write to out
while read host addr
do 
  echo ${addr} >> $host.gifsList
done < "${tmpfile}"

# cleanup
rm $tmpfile
