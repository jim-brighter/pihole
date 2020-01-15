#!/bin/bash

date

export DEBIAN_FRONTEND=noninteractive
export TERM=linux

killall apt apt-get

apt-get update
apt-get dist-upgrade -y
apt-get autoremove -y

