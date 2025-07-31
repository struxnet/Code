# WordPress Vagrant Setup

This project provides a Vagrant environment for setting up a WordPress site using the Bento Ubuntu 22.04 box.

## Prerequisites

- [Vagrant](https://www.vagrantup.com/downloads) installed on your machine.
- [VirtualBox](https://www.virtualbox.org/) installed as the provider for Vagrant.

## Getting Started

1. **Clone the repository** (if applicable) or download the project files.

2. **Navigate to the project directory**:
   ```bash
   cd /path/to/wordpress-vagrant
   ```

3. **Start the Vagrant environment**:
   ```bash
   vagrant up
   ```

   This command will create and configure the virtual machine as specified in the `Vagrantfile`. It will also run the provisioning script `provision.sh` to set up WordPress.

4. **Access the WordPress site**:
   Once the VM is up and running, you can access your WordPress site by navigating to `http://192.168.56.79` in your web browser.

## Stopping the Vagrant Environment

To stop the virtual machine, run:
```bash
vagrant halt
```

## Destroying the Vagrant Environment

If you want to remove the virtual machine completely, use:
```bash
vagrant destroy
```

## Additional Information

For more details on Vagrant and its usage, refer to the [Vagrant documentation](https://www.vagrantup.com/docs).