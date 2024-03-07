#!/bin/bash

# Limpar Cache e Buffer
sudo sync; echo 3 | sudo tee /proc/sys/vm/drop_caches
sysctl -w vm.drop_caches=1
sysctl -w vm.drop_caches=2
sysctl -w vm.drop_caches=3
clear

# Limpar a memória SWAP
sudo swapoff -a
sudo swapon -a

# Exibir mensagem de conclusão
echo "Memória RAM limpa com sucesso!"

# Exibindo o consumo da mamória RAM
free -h
