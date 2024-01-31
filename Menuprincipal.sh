
echo "MENU PRINCIPAL"
echo "1.-Hacer estado de las reglas"
echo "2.-Denegar ping remoto"
echo "3.-Permitir ping remoto"
echo "4.-Denegar Acceso a puerto 22 por IP"
echo "5.-Permitir Acceso a puerto 22 por IP"
echo "6.-Denegar Acceso a puerto 22 por MAC"
echo "7.-Permitir Acceso a puerto 22 por MAC"
echo "8.-Denegar Acceso a puerto 22 por rango de IP"
echo "9.-Permitir Acceso a puerto 22 por rango de IP"
echo "10.-SALIR"
echo "ELIGE UNA OPCION DEL MENU"
read x
case $x in

    1)
    echo "Estado de reglas"
    /sbin/iptables -nL
    ;;
    
    2)
    echo "Dime la IP para denegar el ping remoto"
    read s
    /sbin/iptables -A INPUT -p icmp -s $s -j DROP
    ;;
    
    3)
    echo "Dime la IP para permitir ping remoto"
    read m 
    /sbin/iptables -D INPUT -p icmp -s $m -j DROP
    ;;
    
    4)echo "Dime la direccion IP para denegar puerto 22"
    read t
    /sbin/iptables -A INPUT -p tcp -s $t --dport 22 -j DROP
    ;;
    
    5)echo "Dime la direccion IP para denegar puerto 22"
    read z
    /sbin/iptables -D INPUT -p tcp -s $z --dport 22 -j DROP
    ;;
    
    6)echo "Dime la direccion MAC a dropear por puerto 22"
    read MAC
    /sbin/iptables -A INPUT -p tcp --dport 22 -m -mac-source $MAC -j DROP
    ;;
    
    7)echo "Dime la direccion MAC para permitir el acceso a puerto 22 por MAC"
    read MAC1
    /sbin/iptables -D INPUT -p tcp --dport 22 -m -mac-source $MAC1 -j DROP
    ;;
    
    8)
    ./Host.sh
    ;;
    
    9)
    ./Host1.sh
    ;;
    
    10)
    exit
    ;;
esac
