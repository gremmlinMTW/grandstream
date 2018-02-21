#!/bin/bash
tel=`echo $1 | cut -d ":" -f 2 | sed 's/[^0-9+]*//g'`
echo $tel >> /home/roland/dialGS.log
echo "/usr/bin/curl 'http://192.168.178.38/cgi-bin/api-make_call?phonenumber=$tel&account=0&login=admin&password=admin'" >> /home/roland/dialGS.log
date >> /home/roland/dialGS.log
/usr/bin/curl "http://192.168.178.38/cgi-bin/api-make_call?phonenumber=$tel&account=0&login=admin&password=admin"

