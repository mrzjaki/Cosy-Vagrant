#!/usr/bin/env bash

<%= import 'vagrant-shell-scripts/ubuntu.sh' %>

# ===============================
# Setup APT
# ===============================

# Use a local Ubuntu mirror, results in faster downloads.
apt-mirror-pick 'sg'

# Custom repositories
apt-packages-ppa 'chris-lea/node.js'
apt-packages-repository 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' '7F0CEB10'

# Update packages cache.
apt-packages-update

# ===============================
# Install Base Packages.
# ===============================

apt-packages-install	\
	git-core			\
	curl				\
	build-essential		\
	openssl 			\
	libssl-dev			\
	libfreetype6 		\
	libfreetype6-dev	\
	fontconfig				

# ===============================
# Install NodeJS
# ===============================

apt-packages-install 	\
	nodejs				\
	mongodb-10gen		

# ===============================
# Install Global Node Package Modules
# ===============================

npm-packages-install	\
 	n 					\
 	grunt				\
 	bower				\
	phantomjs 			\
 	casperjs			\
 	node-sass			\
 	http-server			

# ===============================
# Cleanup Home Folder
# ===============================

rm -f postinstall.sh
rmdir tmp