echo "Spouštím opravu Orcy..."

RESET_CONFIG=false

if [[ "$1" == "--reset" ]]; then
    RESET_CONFIG=true
fi

echo "Ukončuji Orcu a přístupnostní služby..."

killall -9 orca 2>/dev/null
killall -9 at-spi2-registryd 2>/dev/null
killall -9 at-spi-bus-launcher 2>/dev/null

echo "Zapínám přístupnostní vrstvu..."

gsettings set org.gnome.desktop.interface toolkit-accessibility true 2>/dev/null

echo "Restartuji zvuk..."

if systemctl --user is-active --quiet pipewire 2>/dev/null; then
    systemctl --user restart pipewire 2>/dev/null
fi

if command -v pulseaudio >/dev/null 2>&1; then
    pulseaudio -k 2>/dev/null
fi

if [[ "$RESET_CONFIG" == true ]]; then
    echo "Provádím tvrdý reset nastavení Orcy..."
    rm -rf "$HOME/.local/share/orca" 2>/dev/null
else
    echo "Nastavení Orcy nechávám beze změny."
fi

echo "Spouštím Orcu..."

orca --replace >/dev/null 2>&1 &

echo "Hotovo. Pokud Orca nezačala mluvit, spusť:"
echo "./orca-fix.sh --reset"
