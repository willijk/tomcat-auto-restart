# OVERVIEW
---
This is create to auto detect the tomcat process.If tomcat process collapsed, it will auto restart the tomcat process.It need the cron support.

# GET-START
1. put the **restart.sh,monitor.sh** to the tomcat bin directory,like **CATALINA_HOME/bin**.Not force but recommended.
2. replace the url in monitor.sh to your test page url
3. install the cron on linux
```shell
yum install vixie-cron
```
4. create a timing task file to describe the timing task
```shell
touch task
```
5. add description to **task**
```vim
*/1 * * * * /usr/local/tomcat/bin/monitor.sh
```
6. start **cron** to execute the task(*more about cron type ```man cron``` on linux*)
```shell
service crond start
crontab task
```
7. see the log at the ```CATALINA_HOME/logs/monitor.log```

# ISSUE
- Maybe you will occure the problem ^M bad interruption thing because I edit the sh file on windows,you can try below steps
    1. ``` vim xxx.sh file```
    2. ```set ff=unix ```
