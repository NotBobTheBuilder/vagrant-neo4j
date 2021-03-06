#!/bin/bash
wget -O - http://debian.neo4j.org/neotechnology.gpg.key | apt-key add - 
echo 'deb http://debian.neo4j.org/repo stable/' > /etc/apt/sources.list.d/neo4j.list
apt-get update
apt-get install -y openjdk-7-jre neo4j
sed -i'' 's/#org.neo4j.server.webserver.address/org.neo4j.server.webserver.address/' /etc/neo4j/neo4j-server.properties
service neo4j-service restart
curl -X POST -H 'Accept: application/json; charset=UTF-8' -H 'Authorization: Basic bmVvNGo6bmVvNGo=' -H 'Content-Type: application/json' --data '{"password" : "vagrant"}' http://localhost:7474/user/neo4j/password
