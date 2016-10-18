#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v
echo "$(ifconfig en0 | grep ether)"
echo "$(ifconfig en0 | grep inet)"
# random mac address
openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//' | xargs sudo ifconfig en0 ether
echo "$(ifconfig en0 | grep ether)"
echo "$(ifconfig en0 | grep inet)"

