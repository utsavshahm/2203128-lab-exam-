#!usr/bin/bash

file=$1
field_name=$2
field_value=$3

outputfile=${file::2}$field_name$field_value.csv

touch $outputfile

echo  $file $field_name $field_value > $outputfile

grep "$field_value" $file | wc -l >> $outputfile

head -1 $file >> ${file::2}$field_name$field_value.csv




