#!/bin/bash
sudo su
sudo apt update
sudo apt install nfs-common
cd /home/ubuntu
mkdir efs
chmod -R 777 efs
sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport 10.0.0.188:/ efs
cd /home/ubuntu/efs/
ls -l -R >>/home/ubuntu/movies.txt 
cd /home/ubuntu/
ls -l
