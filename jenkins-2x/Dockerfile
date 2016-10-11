FROM jenkins:latest
# Create Jenkins Folder
USER root
RUN mkdir -p /var/lib/jenkins/
RUN chown -R jenkins:jenkins /var/lib/jenkins

USER jenkins
ENV JENKINS_HOME /var/lib/jenkins
COPY com.splunk.splunkjenkins.SplunkJenkinsInstallation.xml ${JENKINS_HOME}/
RUN install-plugins.sh git splunk-devops splunk-devops-extend workflow-aggregator


# Skip initial setup
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

VOLUME /var/lib/jenkins