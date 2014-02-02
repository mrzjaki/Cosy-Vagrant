# Cosy-Vagrant

A Vagrant configuration for a full-stack Javascript development environment.

## Pre-requisites

- Install VirtualBox
- Install Vagrant

## Setup

1. Clone repo ```git://github.com/mrzjaki/Cosy-Vagrant.git```
2. Add and update submodule ```git submodule update --init```
3. [Optional] Edit ```Vagrantfile``` or ```provision.sh``` to customize
4. Initialize environment ```vagrant up```
5. [Optional] Add to your hosts file: echo '10.11.12.13 cosy.dev' >> /etc/hosts
6. Get Cosy! ```vagrant ssh```
