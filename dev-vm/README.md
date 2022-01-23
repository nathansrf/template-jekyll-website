# Development VM
This folder contains files that allow you to quickly start an Ubuntu 20.04 virtual machine using vagrant.
The VM comes pre-configured with all the required software to start building your Jekyll website.

## Useful Commands
| Command               | Description                                                                                                                           |
|-----------------------|---------------------------------------------------------------------------------------------------------------------------------------|
| vagrant up            | Starts the VM                                                                                                                         |
| vagrant halt          | Stop the VM                                                                                                                           |
| vagrant ssh           | Connect your current terminal to your VMs terminal                                                                                    |
| vagrant ssh-config    | Generate a SSH-config record that you can place in `~/.ssh/config` for connecting to your VM from software like Visual Studio Code    |
| vagrant destroy       | Delete the current VM image (includes files stored locally on the VM)                                                                 |