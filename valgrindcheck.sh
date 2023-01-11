#!/bin/bash
# go cd into tests, then run
# bash ../valgrindcheck.sh ../chess
for file in $(ls *.in); do
    echo ${file}
    $(valgrind ${1} -s --leak-check=full < ${file})
done
exit 1
 
