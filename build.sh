#!/bin/bash
cd /home/ec2-user
rm -rf maven
git clone https://github.com/perimidi/maven.git
cd maven
mvn clean install
if [ $? == 0 ]; then
	echo " the project build is success"
else 
        echo " the project build is faild"
fi

cp -rp /home/ec2-user/maven/target/*.jar /home/ec2-user/output

