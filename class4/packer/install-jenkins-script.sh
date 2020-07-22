#!/bin/bash
sudo apt-get -y update
sudo apt-get -y install default-jdk
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt search openjdk
sudo apt-get install openjdk-8-jdk
sudo systemctl enable --now jenkins



# sudo yum install epel-release -y
# sudo yum install wget java -y 
# sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat/jenkins.repo
# sudo rpm --import http://pkg.jenkins.io/redhat/jenkins.io.key
# sudo yum install jenkins -y 
# sudo systemctl start jenkins
# sudo systemctl enable jenkins
