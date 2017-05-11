#!/bin/bash

logDir="./../searchlogs"
mkdir ${logDir}
input="./searchkeys.txt"

while IFS= read -r var
do
    touch ${logDir}/$var.txt
    grep -nr ${var} . > ${logDir}/${var}.txt --exclude-dir={.git,.idea,node_modules} --exclude={*.iml}
done < "$input"
