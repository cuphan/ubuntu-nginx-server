#!/bin/bash

apt-get update
apt-get -y upgrade
apt-get install -y build-essential 
apt-get install -y libffi-dev 
apt-get install -y libssl-dev 
apt-get install -y python-dev
command -v pip &>/dev/null || {
	wget https://bootstrap.pypa.io/get-pip.py
	python get-pip.py
}
command -v ansible &>/dev/null || {
	pip install ansible
}