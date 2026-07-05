#!/usr/bin/env bash

set -e

echo "======================================"
echo " Projekt Fénix – update.sh"
echo " Aktualizace Ubuntu systému"
echo "======================================"
echo

echo "[1/5] Aktualizuji seznam balíčků..."
sudo apt update

echo
echo "[2/5] Instaluji dostupné aktualizace..."
sudo apt upgrade -y

echo
echo "[3/5] Aktualizuji Snap aplikace..."
sudo snap refresh

echo
echo "[4/5] Odstraňuji nepotřebné balíčky..."
sudo apt autoremove -y

echo
echo "[5/5] Čistím lokální cache balíčků..."
sudo apt autoclean

echo
echo "======================================"
echo " Aktualizace dokončena."
echo " Doporučení: pokud se aktualizovalo jádro nebo systémové služby,"
echo " proveď restart počítače."
echo "======================================"