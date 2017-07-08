# OVERVIEW
---
This is create to auto detect the tomcat process.If tomcat process collapsed, it will auto restart the tomcat process.It need the cron support.

# GET-START
1. put the **restart.sh,monitor.sh** to the tomcat bin directory,like **CATALINA_HOME/bin**.Not force but recommended.
2. install the cron on linux
```shell
yum install cron
```
3. create a timing task file to describe the timing task
```shell
touch task
```
4. add description to **task**
```vim
*/1 * * * * /usr/local/tomcat/bin/monitor.sh
```
5. start **cron** to execute the task
```shell
crontab task
```
6. see the log at the ```CATALINA_HOME/logs/monitor.log```
