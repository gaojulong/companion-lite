#!/bin/bash

# RPi2 setup script for use as companion computer. This script is simplified for use with
# the ArduSub code.
cd $HOME

# install python and pip
sudo apt-get install -y  python-libxml2 python-lxml libcurl4-openssl-dev

sudo apt-get install libxml2-dev libxslt-dev python3-dev
# install MAVLink tools
sudo pip install mavproxy  # also installs pymavlink

# install screen
sudo apt-get install -y screen

# source startup script
# S1="$HOME/companion/scripts/expand_fs.sh"
S2=". $HOME/companion/.companion.rc"

# this will produce desired result if this script has been run already,
# and commands are already in place
# delete S1 if it already exists
# insert S1 above the first uncommented exit 0 line in the file
sudo sed -i -e "\%$S2%d" \
-e "0,/^[^#]*exit 0/s%%$S2\n&%" \
/etc/rc.local
