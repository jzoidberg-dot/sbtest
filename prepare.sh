#! /usr/bin/bash

docker run -d -p 8080:8080 -p 50000:50000 -e JENKINS_HOME="/jenkins_home" --name jenkins-server zoid/sbtest:jenkins-server
docker run -v /usr/bin/docker:/usr/bin/docker -v /var/run/docker.sock:/var/run/docker.sock -d --name ja1 zoid/sbtest:ja1
ip=`docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ja1`
docker exec jenkins-server mkdir 700 /var/jenkins_home/.ssh && touch known_hosts /var/jenkins_home/.ssh
clear
echo "######################"
echo 'Please, enter jenkins-server container and execute command:  '
echo "ssh-keyscan -H $ip > /var/jenkins_home/.ssh/known_hosts"
echo "Set IP address to $ip in jenkins > Nodes > ja1 in web interface setting"
echo "######################"