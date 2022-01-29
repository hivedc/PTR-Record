#!/bin/bash
echo 'Rentrer les 3 premiers bloc inverses'
echo 'Ex : 45.154.168.0/24 168.154.45'
read bloc
echo 'Nom de domaine : '
read tld

for i in {0..255}
do
  echo "pdnsutil add-record $bloc.in-addr.arpa  $i PTR ip.$i.$bloc.$tld."
done
