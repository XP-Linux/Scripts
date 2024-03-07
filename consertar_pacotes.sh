#!/bin/bash

# Atualize a lista de pacotes
sudo apt update

# Corrija dependências quebradas
sudo apt --fix-broken install -y

# Remova pacotes quebrados
sudo apt autoremove --purge -y

# Limpe o cache do apt
sudo apt clean

# Atualize todos os pacotes
sudo apt full-upgrade -y
