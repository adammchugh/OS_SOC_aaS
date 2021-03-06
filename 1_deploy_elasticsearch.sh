#!/bin/bash
sudo apt update -y && sudo apt upgrade -y

sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo apt update -y
apt install apt-transport-https -y
sudo apt install openjdk-11-jdk -y
sudo apt install unzip -y
wget -qO - https://d3g5vo6xdbdb9a.cloudfront.net/GPG-KEY-opendistroforelasticsearch | sudo apt-key add -
echo "deb https://d3g5vo6xdbdb9a.cloudfront.net/apt stable main" | sudo tee -a   /etc/apt/sources.list.d/opendistroforelasticsearch.list
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-oss-7.9.1-amd64.deb
sudo dpkg -i elasticsearch-oss-7.9.1-amd64.deb
sudo apt-get update -y
sudo apt install opendistroforelasticsearch

echo "Installation of Open Distro Elasticsearch is complete."
