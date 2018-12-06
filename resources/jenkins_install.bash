#!/bin/bash
# jenkins install for centos-7
latest_war="https://updates.jenkins-ci.org/latest/jenkins.war"
packages="java wget"
sudo yum install -y ${packages}
mkdir -p ${JENKINS_HOME}
wget ${latest_war} ${JENKINS_HOME}
# systemd service
sudo cp ~/jenkins.service /etc/systemd/system/jenkins.service
sudo systemctl enable jenkins

