#!/bin/bash
if [ $# -ne 1 ]; then
	echo "kasutusjuhend: $0 failinimi"
else
  failinimi=$1
  if [ -f $failinimi -a -r $failinimi ]; then
	echo "fail on korras"
	for rida in $(cat $failinimi)
	do
	  nimi=$(echo $rida | cut -f1 -d":")
	  sh lisa_kasutaja $nimi
	  if [ $? -eq 0 ]; then
	    echo $rida | chpasswd
	    cat /etc/shadow | grep $nimi
	  fi
	done
else
	echo "probleem failiga $failinimi"
	fi
fi
