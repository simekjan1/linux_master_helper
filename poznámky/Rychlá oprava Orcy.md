Rychlá oprava Orcy

Ctrl + Alt + O nebo Ctrl + Alt + Shift + O
Alt + F2		orca --replace
Ctrl + Alt + T	killall -9 orca	killall -9 at-spi2-registryd	killall -9 at-spi-bus-launcher	orca --replace
gsettings set org.gnome.desktop.interface toolkit-accessibility true
systemctl --user restart pipewire
pulseaudio -k
rm -rf ~/.local/share/orca