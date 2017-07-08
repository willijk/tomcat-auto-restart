#!/bin/bash
#get the tomcat process id
tomcatPid=`ps -ef | grep tomcat | grep -v grep | awk '{print $2}'`
echo ${tomcatPid}
CATALINA_HOME=/usr/local/tomcat
if [ -n ${tomcatId} ];then
    sudo kill -9 $tomcatPid
    sleep 2
    $CATALINA_HOME/bin/startup.sh
else
    $CATALINA_HOME/bin/startup.sh
fi
