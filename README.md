# Cosy-Vagrant

A Vagrant configuration for a full-stack Javascript development environment.

## Installation

### Pre-requisites
- Install VirtualBox (4.3.6)
- Install Vagrant (1.4.3)

### Checkout Project, Add And Update Submodules

```
> git clone git://github.com/mrzjaki/Cosy-Vagrant.git
> cd Cosy-Vagrant
> git submodule init
> git submodule update
```

### Customize Environment (Optional)

#### Shared Folder
If you already have an existing project on your host, edit the shared folder configurations in the Vagrantfile. Otherwise, you could just stick to the `example-workspace` as provided.

#### Development Environment
Feel free to edit `provision.sh` to setup a development environment to your liking and/or based on your development requirements.

###  Initialize Environment

Initialize the VM with the default setup

```
> vagrant up
```

## 2. Usage

Accessing the VM is done via SSH,

``` 
> vagrant ssh
```

A simple zero-configuration command-line http-server is provided. To see it in action;

```
vagrant@cosy-vagrant:~$ cd example-workspace
vagrant@cosy-vagrant:~/example-workspace$ http-server
```

You can now view the server at ```localhost:8080``` or ```10.11.12.13:8080```` in your browser.
For more information on using http-server, visit it's [Github repo](https://github.com/nodeapps/http-server).
