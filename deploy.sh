#!/bin/bash 

case $1 in 
start) 
cd /home/admin/application
nohup java -jar find-links.jar https://baidu.com & 
echo $! > pid  
;;
stop)
pid=`cat pid`
kill -9 $pid 
rm -rf /home/admin/application
;;
*)
  echo "Usage ${0} start or stop"
  ;;
esac


