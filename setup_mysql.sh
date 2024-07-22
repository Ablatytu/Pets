#!/bin/bash

# Подключение репозитория MySQL и установка пакета
sudo apt-get install software-properties-common
sudo add-apt-repository 'deb http://repo.mysql.com/apt/ubuntu/ bionic mysql-8.0'
wget -c https://dev.mysql.com/get/mysql-apt-config_0.8.13-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.13-1_all.deb
sudo apt-get update

# Установка пакета из репозитория
sudo apt-get install mysql-server
