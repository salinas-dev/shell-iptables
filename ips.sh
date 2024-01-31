echo 'BLOQUEAR IP'
echo 'ingresa el inicio de la ip 1'
    read ip1
    echo 'ingresa el inicio de la ip 2'
    read ip2
    echo 'ingresa el inicio de la ip 3'
    read ip3
    echo 'ingresa el inicio de la ipp'
    read inicio
    echo 'ingresa el fin de la ipp'
    read fin
    com=$inicio-1;
    conta=$com
    for (( c=$com; c<$fin; c++))
    do
    let conta++
    /sbin/iptables -A INPUT -p tcp -s $ip1.$ip2.$ip3.$conta --dport 22 -j DROP
    done
    clear
