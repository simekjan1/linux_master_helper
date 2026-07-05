Seznam aplikací pro ubuntu:
git:
sudo apt install git

Python (Ubuntu už má Python 3 v základu nainstalovaný, tímto příkazem případně dohraji zbytek):
sudo apt install python3

pip (Správce balíčků pro Python):
sudo apt install python3-pip

vlc media player:
sudo apt install vlc

krusader (Pokročilý dvoupanelový správce souborů): 
sudo apt install krusader

Firefox (Bývá v Ubuntu předinstalovaný. Pokud by chyběl, v novějších verzích Ubuntu se instaluje jako snap):
sudo snap install firefox

keepassxc:
sudo apt install keepassxc

zip a unzip:
sudo apt install zip unzip

java a java runtime (Tímto nainstaluji výchozí plné prostředí Javy JRE i JDK, což je ideální):
sudo apt install default-jre default-jdk

GParted (Grafický správce diskových oddílů):
sudo apt install gparted

curl:
sudo apt install curl

wget:
sudo apt install wget

htop (Skvělý textový přehled o vytížení počítače):
sudo apt install htop

thunderbird (E-mailový klient, v novém Ubuntu jako snap):
sudo snap install thunderbird

node js a npm
*V repozitáři sice jsou, ale často hodně staré. Nejlepší a nejčistší cesta na Ubuntu je použít oficiální NodeSnap:*
sudo snap install node --classic

Tímto získám Node.js i NPM najednou v aktuální verzi).

github desktop:
Oficiálně od GitHubu pro Linux neexistuje, ale komunita udržuje perfektní identický port.
sudo snap install github-desktop --beta

Minecraft launcher:
Nejjednodušší instalace oficiálního launcheru pro Linux na Ubuntu:
sudo snap install minecraft-launcher-mcl

gitea: 
Pro mé lokální self-hosted repozitáře je nejsnazší ji nahodit jako snap:
sudo snap install gitea

LM Studio: 
LM Studio už nabízí pro Linux přímý `.deb balíček nebo AppImage. Dá se stáhnout přímo z jejich webu lmstudio.ai. Pokud si stáhnu .deb soubor do složky Stažené, nainstaluji ho takto:*
sudo apt install ./Downloads/LM_Studio_*.deb

wine: Oficiálně v ubuntu repozitářích. 
sudo apt install wine