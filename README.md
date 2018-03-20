# SunCoin (SUN) - Mining Pool

First Global CO2 Neutral Blockchain Network

With focus on emission neutral mining and an CO2 initiative fund, SunCoin  is the thought leader in creating a sustainable distributed ledger system awareness and offer working solution for decarbonizing the market. With your help, SunCoin will balance out impact on our environment and provide new ways powering the future of crypto finance and distributed ledger systems.

**Info:** SunCoin is a proud fork of Dash. Kudos to the Dash team for the hard work and creating the technical foundation for a community driven project as SunCoin.

This guide covers installing Mining Pool onto an Ubuntu docker image.

**Warning**: This is for testing only - hardening needs to be implemented first for productive use.

## 1. Install Docker, Ubuntu Image

Make sure docker is installed: 

https://docs.docker.com/install

Download the latest docker ubuntu image:

    $ docker pull ubuntu
    
## 2. Start Docker Image

Startup the docker image with the needed ports (check if you need addiontal ports):

    $ docker run -i -p 3306:3306 -p 587:587 -p 11211:11211 -p 80:80 -p 4233:4233 -t ubuntu:latest /bin/bash

## 3. Clone Mining Pool Script

Now you need to update your system and install necessary packages:

    $ apt-get update
    $ apt-get install sudo nano git
    $ cd ~
    $ git clone https://github.com/suncoin-network/pool.git
    
## 4. Configure Setup Script

You need to add your ip address to the install script. Replace **<ip>** with your public IP address and run:

    $ sudo sed -i s/PLACEHOLDERYOURIP/<ip>/g  ~/pool/install.sh
    
## 5. Run Installation

Now can install the mining pool via:

    $ cd ~
    $ bash pool/install.sh
    
Check pre-configured values and hit enter to install.


## 6. Access Mining Pool

After the installation script is done, you can access your mining pool from your host pc via: 

http://0.0.0.0  

The admin panel is rechable via:

http://0.0.0.0/site/adminRights

## 7. SunCoin Coin Configuration

Now you are ready to create SunCoin as a new coin - here are the details of the coin properties:

https://github.com/suncoin-network/documentation/blob/master/miningpool.md

## 8. Start Stratum & Yiimp

That users can now connect to your pool and start mining, you need to start the stratum service:

    $ cd ~
    $ bash /var/stratum/run.sh neo &
    $ bash /var/web/main.sh &
    $ bash /var/web/blocks.sh &
    $ bash /var/web/loop2.sh &
    

