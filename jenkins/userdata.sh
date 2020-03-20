#!/bin/bash
 
sudo yum install wget rpm -y
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins java -y
sudo systemctl start jenkins
sudo systemctl enable jenkins

setenforce 0 

yum install java-1.8.0-openjdk -y


sudo -u jenkins -- ssh-keygen -t rsa -b 2048 -f /var/lib/jenkins/.ssh/id_rsa -q -N ""

sudo usermod -s /bin/bash jenkins


sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum-config-manager --enable docker-ce-nightly

sudo yum-config-manager --enable docker-ce-test

sudo yum-config-manager --disable docker-ce-nightly

sudo yum install docker-ce docker-ce-cli containerd.io -y

sudo systemctl start docker

sudo systemctl enable docker

sudo usermod -a -G docker jenkins
sudo usermod -aG docker jenkins
sudo usermod -aG root jenkins
chmod 777 /var/run/docker.sock