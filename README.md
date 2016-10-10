Download [Splunk App For Jenkins](https://splunkbase.splunk.com/app/3332/), put it in the same folder of Dockerfile
cd into the folder and run
```
docker build -t splunk_app_jenkins .
docker run -d -e "SPLUNK_START_ARGS=--accept-license" -p 8000:8000 -p 8088:8088 -p 8089:8089 splunk_app_jenkins

```

See also [docker-splunk](https://github.com/splunk/docker-splunk/tree/master/enterprise)