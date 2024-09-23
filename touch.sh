#!/bin/bash
sudo su
sudo apt update
sudo apt install nfs-common -y
cd /home/ubuntu
mkdir efs
chmod -R 777 efs
sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport 10.0.0.51:/ efs
cd /home/
mkdir efs
chmod -R 777 efs
sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport 10.0.2.182:/ efs
cd /home/ubuntu/efs/WebSeries/XX (2023) S01
cp "www.1TamilMV.tf\ -\ XX\ S01E0*" /home/efs/
cd /home/efs/
ls -l -R >>/home/efs/movies.txt
cat movies.txt
cd /home/ubuntu/
ls -l
