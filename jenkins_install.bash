#!/bin/bash
# jenkins install for centos-7
latest_war="https://updates.jenkins-ci.org/latest/jenkins.war"
packages="java wget"
sudo yum install -y ${packages}
wget ${latest_war} ~
echo "export JENKINS_HOME=\"/home/jenkins\" >> ~/.bash_profile"

