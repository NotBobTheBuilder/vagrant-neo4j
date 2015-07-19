#!/bin/bash
wget -O - http://debian.neo4j.org/neotechnology.gpg.key | apt-key add - 
echo 'deb http://debian.neo4j.org/repo stable/' > /etc/apt/sources.list.d/neo4j.list
apt-get update
apt-get install openjdk-7-jre
apt-get install -y neo4j
sed -i'' 's/#org.neo4j.server.webserver.address/org.neo4j.server.webserver.address/' /etc/neo4j/neo4j-server.properties
service neo4j-service restart
