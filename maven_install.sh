#!/bin/bash
# install Java JDK 11+ as a pre-requisit for maven to run.
#1
sudo hostname maven # set hostname maven
sudo su - ec2-user
cd /opt
sudo yum install wget vim nano tree unzip git-all -y
sudo yum install java-11-openjdk-devel java-1.8.0-openjdk-devel -y
java -version
git --version
sudo su - ec2-user
#2
# Download, extract and Install Maven
#Step i) Download the Maven Software
#make sure to get the latest version
sudo wget https://dlcdn.apache.org/maven/maven-3/3.9.3/binaries/apache-maven-3.9.3-bin.zip
sudo unzip apache-maven-3.9.3-bin.zip
sudo rm -rf apache-maven-3.9.3-bin.zip
sudo mv apache-maven-3.9.3/ maven
#3.
#Step3) Set Environmental Variable - For Specific User eg ec2-user
#vi ~/.bash_profile
echo 'export M2_HOME=/opt/maven' >> ~/.bash_profile
echo 'export PATH=$PATH:$M2_HOME/bin' >> ~/.bash_profile
source ~/.bash_profile
mvn -version
