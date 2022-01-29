#!/bin/bash
echo 'Input the 3 first bytes of your /24 in reverse '
echo 'Ex : 45.154.168.0/24 = 168.154.45'
read bloc
echo 'Domain name : '
read tld

for i in {0..255}
do
  echo "pdnsutil add-record $bloc.in-addr.arpa  $i PTR ip.$i.$bloc.$tld."
done
