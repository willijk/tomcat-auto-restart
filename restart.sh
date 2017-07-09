#!/bin/bash
#get the tomcat process id
tomcatPid=`ps -ef | grep tomcat | grep -v grep | awk '{print $2}'`
#echo ${tomcatPid}
export JRE_HOME=/usr/java/jdk1.7.0_80/jre
export CATALINA_HOME=/usr/local/tomcat-7
log=$CATALINA_HOME/logs/monitor.log
if [ -n "${tomcatPid}" ];then
    kill -9 $tomcatPid
    sleep 2
    $CATALINA_HOME/bin/startup.sh 
else
    $CATALINA_HOME/bin/startup.sh
fi
