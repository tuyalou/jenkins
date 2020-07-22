#!/bin/bash
sudo apt -y update
sudo apt -y install default-jdk
wget -y -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo -y sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt -y update
sudo apt -y install jenkins
sudo systemctl enable --now jenkins -y



# sudo yum install epel-release -y
# sudo yum install wget java -y 
# sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat/jenkins.repo
# sudo rpm --import http://pkg.jenkins.io/redhat/jenkins.io.key
# sudo yum install jenkins -y 
# sudo systemctl start jenkins
# sudo systemctl enable jenkins
