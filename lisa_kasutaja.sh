#!/bin/bash
#kasutaja loomise skript
if [ $# -ne 1 ]; then
	echo "Kasutusjuhend: $0 failinimi"
else
	kasutajanimi=$1
	useradd $kasutajanimi -m -s /bin/bash
  if [ $? -eq 0 ]; then
	echo "kasutaja nimega $kasutajanimi on lisatud systeemi"
	cat /etc/passwd | grep $kasutajanimi
	ls -la /home/$kasutajanimi
#	echo "$kasutajanimi:Parool1!" | chpasswd
#	if [$? -eq 0]; then
#	echo "kasutaja nimega $kasutajanimi on m22ratud parooliga":
#	cat /etc/shadow | grep $kasutajanimi
#	else
#		echo "probleem kasutaja $kasutajanimi parooli maaramisega"
#	fi
  else
	echo "probleem kasutaja $kasutajanimi lisamisega"
	echo "probleemi kood on $?"
  fi
fi

