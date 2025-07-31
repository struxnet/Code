# Vagrant Tooplate Site

This project sets up a Vagrant environment to host a website using content from tooplate.com.

## Project Structure

```
vagrant-tooplate-site
├── Vagrantfile
├── provision.sh
└── README.md
```

## Requirements

- Vagrant
- VirtualBox or another supported provider

## Setup Instructions

1. **Clone the Repository**: 
   Clone this repository to your local machine.

2. **Navigate to the Project Directory**: 
   Open a terminal and navigate to the project directory:
   ```
   cd vagrant-tooplate-site
   ```

3. **Start the Vagrant Environment**: 
   Run the following command to start the Vagrant environment:
   ```
   vagrant up
   ```

4. **Access the Website**: 
   Once the provisioning is complete, you can access the website at `http://192.168.56.78`.

5. **SSH into the Vagrant Box**: 
   If you need to access the Vagrant box, you can do so with:
   ```
   vagrant ssh
   ```

## Provisioning Script

The `provision.sh` script is responsible for installing necessary packages and setting up the website. You can modify this script to customize the setup as needed.

## Stopping the Vagrant Environment

To stop the Vagrant environment, run:
```
vagrant halt
```

## Destroying the Vagrant Environment

If you want to remove the Vagrant environment completely, use:
```
vagrant destroy
```