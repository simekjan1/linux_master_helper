# Nouzová oprava Orcy

## 1. Nejrychlejší oprava

Spustit klávesovou zkratku:

Ctrl + Alt + O

Pokud nepomůže:

Ctrl + Alt + Shift + O

## 2. Ruční restart

Alt + F2

orca --replace

## 3. Ruční oprava

Ctrl + Alt + T

killall -9 orca
killall -9 at-spi2-registryd
killall -9 at-spi-bus-launcher
orca --replace

## 4. Zapnutí přístupnosti

gsettings set org.gnome.desktop.interface toolkit-accessibility true

## 5. Restart zvuku

systemctl --user restart pipewire

pulseaudio -k

## 6. Poslední možnost

rm -rf ~/.local/share/orca
orca

## 7. Když nepomůže vůbec nic
Restart systému.