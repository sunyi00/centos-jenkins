FROM sunyi00/centos-java:1.0.0

ENV JENKINS_HOME /jenkins

RUN wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo \
    && rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key \
    && yum install -y jenkins \
    && yum -y clean all \
    && mkdir -p /jenkins

EXPOSE 8080
VOLUME /jenkins
