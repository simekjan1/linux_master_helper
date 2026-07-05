orca-fix_reset.sh:
echo "Restartuji Orcu a přístupnostní služby..."

# Zastavení běžících instancí Orcy a AT-SPI
killall -9 orca 2>/dev/null
killall -9 at-spi2-registryd 2>/dev/null
killall -9 at-spi-bus-launcher 2>/dev/null

echo "Čistím konfiguraci Orcy..."

# Smazání poškozené konfigurace Orcy
rm -rf ~/.local/share/orca 2>/dev/null

echo "Aktivuji přístupnostní vrstvu..."

# Zapnutí AT-SPI
gsettings set org.gnome.desktop.interface toolkit-accessibility true

echo "Restartuji zvukové služby..."

# Restart Pipewire nebo PulseAudio
systemctl --user restart pipewire 2>/dev/null
pulseaudio -k 2>/dev/null

echo "Spouštím Orcu..."

# Spuštění nové instance Orcy
orca --replace &

echo "Hotovo. Orca by měla být znovu funkční."