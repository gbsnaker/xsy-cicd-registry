#!/bin/bash 
cd /home/admin/application
case $1 in 
start) 
nohup java -jar find-links.jar https://baidu.com & 
echo $! > pid  
break
;;
stop)
pid=`cat pid`
kill -9 $pid 
echo > pid 
break
;;
*)
  echo "Usage ${0} start or stop"
  ;;
esac


