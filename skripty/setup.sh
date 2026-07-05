#!/usr/bin/env bash

set -e

echo "======================================"
echo " Ubuntu Setup – Jan Šimek"
echo "======================================"
echo

echo "[1/8] Aktualizuji systém..."
sudo apt update
sudo apt upgrade -y

echo
echo "[2/8] Instaluji přístupnost..."
sudo apt install -y rhvoice speech-dispatcher-rhvoice rhvoice-czech

echo
echo "[3/8] Instaluji vývojové nástroje..."
sudo apt install -y git python3 python3-pip default-jre default-jdk build-essential curl wget

echo
echo "[4/8] Instaluji základní programy..."
sudo apt install -y vlc krusader keepassxc zip unzip gparted htop wine

echo
echo "[5/8] Instaluji SSH..."
sudo apt install -y openssh-client openssh-server

echo
echo "[6/8] Instaluji Snap aplikace..."
sudo snap install firefox || true
sudo snap install thunderbird || true
sudo snap install node --classic || true
sudo snap install minecraft-launcher-mcl || true
sudo snap install github-desktop --beta || true

echo
echo "[7/8] Vytvářím pracovní složky..."
mkdir -p "$HOME/Scripts"
mkdir -p "$HOME/Dokumenty/Linux"
mkdir -p "$HOME/Projekty"

echo
echo "[8/8] Testuji RHVoice..."
rhvoice-test -l || true
spd-say -o rhvoice -l cs "Instalace byla úspěšná." || true

echo
echo "======================================"
echo " Hotovo."
echo " Doporučení: restartuj počítač."
echo "======================================"