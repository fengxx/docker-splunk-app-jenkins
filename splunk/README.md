### Upgrade
 1. download latest [Splunk App For Jenkins](https://splunkbase.splunk.com/app/3332/) and put it in the same folder of Dockerfile  
2. update Dockerfile to use latest package  
   `ENV package splunk-app-for-jenkins_101.tgz`  
3. update app.md5 with latest package and checksum 
   `91e07d02f41e91254a8c46343751391a splunk-app-for-jenkins_101.tgz`  

### Build and Run

```
docker build -t splunk_app_jenkins .
docker run -d -e "SPLUNK_START_ARGS=--accept-license" -p 8000:8000 -p 8088:8088 -p 8089:8089 splunk_app_jenkins

```

See also [docker-splunk](https://github.com/splunk/docker-splunk/tree/master/enterprise)
