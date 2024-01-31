echo "Dime el segmento de red"
read x
echo "Dime la ip inicial a DROPEAR"
read y
echo "Dime la ip final a DROPEAR"
read z
  while [ $y -le $z ]
  do
  
  /sbin/iptables -D INPUT -p tcp -s $x$y --dport 22 -j DROP
  
  y=`expr $y + 1`
  done
