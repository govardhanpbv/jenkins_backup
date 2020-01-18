#!/bin/bash

cd /var/lib/jenkins/
sudo cp -r /var/lib/jenkins/ /home/ec2-user/jenkins_backup/
cd /home/ec2-user/jenkins_backup/

sudo git add jenkins

sudo git commit -m "jenkins backup taken"

sudo git push https://github.com/govardhanpbv/jenkins_backup.git master

if [ $? -eq 0 ]
then
echo "successfull"
else
echo " backup fails"
fi
sudo rm -rf jenkins/

