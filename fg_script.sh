#!/bin/bash

fileip=fg_input.txt

filevor=fg_template.txt

output=output.txt

ip=""

# pruefen ob Ausgabedatei schon vorhanden

if [ -f $output ]; then

        rm -f $output

fi

#pruefen ob Eingabedatei vorhanden

if [ -f $fileip ]; then

#do-while loop to read each line of $fileip

  while IFS= read -r lineip

  do

#each line in $fileip is read and declared as $ip

     ip=$lineip

#reading each line of $filevor

     while IFS= read -r linevor

     do

#replace text in $filevor with $lineip from $fileip

         text=${linevor//$\IPADDR/$lineip}

#writes the content of $text into $output

         echo $text >>$output

     done < $filevor

  done < $fileip

#displays $output after running the script

  cat $output

else

  echo "keine Eingabedatei vorhanden"

fi
