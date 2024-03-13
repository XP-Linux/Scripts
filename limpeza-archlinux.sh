#!/bin/bash

# Limpeza de cache e pacotes não utilizados
sudo pacman -Sc --noconfirm
sudo pacman -Scc --noconfirm
sudo pamac clean --no-confirm

# Limpeza de diretórios temporários
sudo rm -rf /tmp/*

# Limpeza de caches
sudo rm -rf ~/.cache/*

# Limpeza de logs antigos
sudo find /var/log -type f -name "*.log" -exec truncate -s 0 {} \;

# Limpeza do lixo do usuário
rm -rf ~/.local/share/Trash/*
rm -rf ~/.thumbnails/*

# Limpar Pastas Recentes
echo | tee $HOME/.local/share/recently-used.xbel

# Limpeza de Rhythmbox
echo "Limpando Rhythmbox..."
rm -rf ~/.local/share/rhythmbox/

# Limpeza do journald
echo "Limpando journald..."
sudo journalctl --vacuum-time=3d

# Limpeza de Evolution
echo "Limpando Evolution..."
rm -rf ~/.local/share/evolution/mail

# Limpeza de histórico de comandos do terminal
cat /dev/null > ~/.bash_history && history -c && exit

# Informar que a limpeza foi concluída
echo "Limpeza concluída com sucesso!"
