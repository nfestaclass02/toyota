# toyota

Apache Maven Installation And Setup In AWS EC2 Redhat Instance.


Prerequisite
AWS Acccount.
Create Security Group and open Required ports.
22 ..etc
Create Redhat EC2 T2.medium Instance with 4GB of RAM.
Attach Security Group to EC2 Instance.
Install java openJDK 1.8+

- Install Java JDK 11+ and other softares (git, wget, nano, tree and vim)
# install Java JDK 11+ as a pre-requisit for maven to run.
1.
sudo hostname maven # set hostname maven
sudo su - ec2-user
cd /opt
sudo yum install wget vim nano tree unzip git-all -y
sudo yum install java-11-openjdk-devel java-1.8.0-openjdk-devel -y
java -version
git --version
sudo su - ec2-user

2.
 Download, extract and Install Maven
Step i) Download the Maven Software
sudo wget https://dlcdn.apache.org/maven/maven-3/3.9.3/binaries/apache-maven-3.9.3-bin.zip #make sure to get the latest version
>>mm
ii. sudo unzip apache-maven-3.9.3-bin.zip
iii. sudo rm -rf apache-maven-3.9.3-bin.zip
iv. sudo mv apache-maven-3.9.3/ maven
mm


3.
Step3) Set Environmental Variable - For Specific User eg ec2-user

vi ~/.bash_profile  # and add the lines below
export M2_HOME=/opt/maven
export PATH=$PATH:$M2_HOME/bin

4.
step4) Refresh the profile file and Verify if maven is running

source ~/.bash_profile
mvn -version

===================================================
#vi ~/.bash_profile 
echo 'export M2_HOME=/opt/maven' >> ~/.bash_profile
echo 'export PATH=$PATH:$M2_HOME/bin' >> ~/.bash_profile

source ~/.bash_profile
mvn -version
