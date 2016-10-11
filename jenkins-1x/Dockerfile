FROM jenkins:1.651.3
# Create Jenkins Folder
USER root
RUN mkdir -p /var/lib/jenkins/
RUN chown -R jenkins:jenkins /var/lib/jenkins

USER jenkins
ADD plugins.txt /tmp/
ENV JENKINS_HOME /var/lib/jenkins
COPY com.splunk.splunkjenkins.SplunkJenkinsInstallation.xml ${JENKINS_HOME}/
RUN plugins.sh /tmp/plugins.txt
VOLUME /var/lib/jenkins