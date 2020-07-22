sudo apt update -y
sudo apt install -y default-jre 
sudo apt update –y
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add - -y
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update -y
sudo apt-get install jenkins -y
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo ufw allow OpenSSH
sudo ufw enable


# sudo yum install epel-release -y
# sudo yum install wget java -y 
# sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat/jenkins.repo
# sudo rpm --import http://pkg.jenkins.io/redhat/jenkins.io.key
# sudo yum install jenkins -y 
# sudo systemctl start jenkins
# sudo systemctl enable jenkins
