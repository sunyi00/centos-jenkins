FROM sunyi00/centos-java:latest

ENV JENKINS_HOME /jenkins

RUN localedef -c -f UTF-8 -i en_US en_US.UTF-8 \
    && export LANG=en_US.UTF-8 \
    && export LC_ALL=en_US.UTF-8 \
    && rm -f /etc/localtime && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo \
    && rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key \
    && yum install -y jenkins \
    && mkdir -p /jenkins

EXPOSE 8080
VOLUME /jenkins
