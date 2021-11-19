#!/bin/bash

#Erase the codedeploy-agent app and folder
sudo yum erase codedeploy-agent
cd /opt
sudo rm -r codedeploy-agent/

# reinstall codedeploy
cd ~
sudo ./install auto

