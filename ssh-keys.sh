#! /bin/bash

cp /root/.ssh.ref/id_rsa /root/.ssh/id_rsa
cp /root/.ssh.ref/id_rsa.pub /root/.ssh/id_rsa.pub
chmod 600 /root/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa.pub