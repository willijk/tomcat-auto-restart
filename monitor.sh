#!/bin/bash
log=./monitor.log
monitor(){
    url=http://localhost:8080/test
    success=$(curl -s -o /dev/null -m 10 -w %{http_code} ${url})
    if [ 200 -eq $success ];then
        echo "[INFO `date`] tomcat already succes started"
    else
        echo "[INFO `date`] tomcat collapse"
        echo "[INFO `date`] restart tomcat"
        #excute the restart script
        sudo ./restart.sh
    fi
}
monitor>>$log
