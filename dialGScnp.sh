#!/bin/bash
tel=`echo $(xclip -o) | cut -d ":" -f 2 | sed 's/[^0-9+]*//g'`
echo "calling $tel with grandstream via URL:"
echo "/usr/bin/curl 'http://192.168.178.38/cgi-bin/api-make_call?phonenumber=$tel&account=0&login=admin&password=admin'" >> /home/roland/dialGS.log
date >> /home/roland/dialGS.log
/usr/bin/curl "http://192.168.178.38/cgi-bin/api-make_call?phonenumber=$tel&account=0&login=admin&password=admin"

