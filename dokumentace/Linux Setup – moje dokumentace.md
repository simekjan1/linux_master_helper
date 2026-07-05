# Linux Setup – moje dokumentace

Autor: Jan Šimek

# Zásady projektu

Tento projekt nemá žádný pevný termín dokončení.

Nejde o to nainstalovat Ubuntu co nejrychleji. Jde o to vybudovat stabilní, přístupné a dlouhodobě udržitelné pracovní prostředí.

Pokud se některý krok nepovede napoprvé, není to neúspěch. Je to příležitost zjistit proč, doplnit dokumentaci a zlepšit celý postup.

Neexistuje žádný důvod ke spěchu.

Pokud se instalace nepovede v úterý, dokončí se ve středu. Pokud bude potřeba ještě více času, dokončí se později. Důležitější než rychlost je kvalita výsledku.

Každý problém, na který během instalace narazím, bude zaznamenán do dokumentace společně s jeho řešením. Díky tomu bude každá další instalace jednodušší než ta předchozí.

Cílem projektu není pouze nainstalovat Linux.

Cílem je vytvořit systém, kterému budu rozumět, který si dokážu opravit a který bude připravený na každodenní práci.

# Cíl

Vybudovat stabilní pracovní prostředí na Ubuntu, které bude:

* plně přístupné pomocí Orcy,
* připravené pro každodenní práci,
* snadno obnovitelné po havárii,
* zdokumentované tak, abych za několik let nemusel nic znovu složitě zjišťovat.

Nejde o rychlou instalaci Linuxu.

Jde o vytvoření systému, kterému budu rozumět a na který se budu moci spolehnout.

# Historie verzí

Tato kapitola slouží k evidenci všech významných změn projektu. Díky ní je možné zpětně dohledat, kdy byla přidána nová funkce, upraven skript nebo změněn postup.

---

## Verze 0.1

První návrh projektu.

Obsah:

* vytvoření základní dokumentace,
* stanovení cílů projektu,
* výběr distribuce Ubuntu 26.04 LTS,
* příprava instalačního USB,
* rozhodnutí ponechat Windows na druhém notebooku.

---

## Verze 0.2

Rozšíření dokumentace.

Obsah:

* kapitola RHVoice,
* instalace českého hlasu Zdeněk,
* Speech Dispatcher,
* diagnostické příkazy,
* řešení nejčastějších problémů.

---

## Verze 0.3

Přístupnost systému.

Obsah:

* kompletní kapitola Orca,
* nouzové postupy,
* diagnostika,
* krizové situace,
* skript orca-fix.sh.

---

## Verze 0.4

Automatizace systému.

Obsah:

* první verze setup.sh,
* seznam používaných aplikací,
* plán dalších skriptů.

---

## Verze 0.5

Příprava instalace.

Obsah:

* checklist před instalací,
* zásady projektu,
* důvody přechodu na Linux,
* vytvoření instalační strategie.

---

## Verze 1.0

První stabilní vydání.

Obsah:

* úspěšná instalace Ubuntu,
* funkční RHVoice,
* funkční Orca,
* dokončený setup.sh,
* ověřená dokumentace.

---

## Další verze

Každá významnější změna bude zaznamenána do této kapitoly společně s datem a stručným popisem změn.


---

# Stav projektu

* [x] Vybraná distribuce
* [x] Instalační USB připraveno
* [ ] Ověřená přístupnost
* [ ] RHVoice
* [ ] Orca
* [ ] Setup skript
* [ ] Zálohování
* [ ] AI prostředí
* [ ] Dokumentace dokončena

---

# Hardware

**Název zařízení:** simek

**Procesor:** Intel Core i5-13420H (13. generace)

**RAM:** 16 GB

**Grafická karta:** Intel UHD Graphics

**SSD:** 477 GB

**Architektura:** x86_64 (64bit)

---

# Rozdělení zařízení

## Domácí notebook

**Operační systém:**
Ubuntu 26.04 LTS

**Účel:**

* hlavní pracovní počítač
* vývoj Palpatia
* Firefox
* Markdown
* Git
* Bash
* lokální AI
* internet
* dokumenty

---

## Pracovní / cestovní notebook

**Operační systém:**
Windows

**Účel:**

* záložní pracovní systém
* programy dostupné pouze pro Windows
* práce na cestách
* nouzové řešení při problémech s Linuxem

---

# Instalace Ubuntu

**Distribuce:**
Ubuntu

**Verze:**
26.04 LTS

**Instalační médium:**
USB flash disk

**Použitý nástroj:**
Rufus

**Způsob instalace:**

* čistá instalace
* celý notebook bude používat Ubuntu
* Windows zůstávají na druhém notebooku

---

# Priorita po instalaci

Pořadí je důležité.

1. Orca funguje.
2. RHVoice funguje.
3. Hlas Zdeněk funguje.
4. Internet funguje.
5. Firefox funguje.
6. Git.
7. Setup skript.
8. AI prostředí.

Dokud nebude fungovat bod 1–3, nebudu řešit nic dalšího.

---

# Zásady projektu

1. Žádné uspěchané změny.
2. Každý krok zdokumentovat.
3. Každé řešení nejprve otestovat.
4. Všechny funkční příkazy uložit.
5. Každý problém zapsat společně s jeho řešením.
6. Po instalaci vytvořit zálohu funkčního systému.

---

# Budoucí kapitoly

* Instalace RHVoice
* Instalace hlasu Zdeněk
* Speech Dispatcher
* Orca
* Setup skript
* Bash skripty
* AI
* Zálohování
* Obnova systému
* Nejčastější problémy

Řešení problémů

# Co udělat před instalací Ubuntu

Tato kapitola slouží jako kontrolní seznam před zahájením instalace. Jejím cílem je minimalizovat riziko ztráty dat a zajistit, že po instalaci bude vše připraveno k práci.

---

# 1. Záloha dat

* [ ] Zálohovat všechny osobní dokumenty.
* [ ] Zálohovat fotografie.
* [ ] Zálohovat projekty.
* [ ] Zálohovat databázi KeePass.
* [ ] Zálohovat důležité skripty.
* [ ] Ověřit, že záloha je čitelná.

---

# 2. Instalační médium

* [ ] Stáhnout správnou verzi Ubuntu.
* [ ] Vytvořit instalační USB pomocí Rufusu.
* [ ] Ověřit, že lze z USB nabootovat.

---

# 3. Ověření Live systému

Před samotnou instalací spustit Ubuntu v režimu „Vyzkoušet Ubuntu“ a zkontrolovat:

* [ ] Funguje Orca.
* [ ] Funguje RHVoice (pokud bude již dostupný).
* [ ] Funguje zvuk.
* [ ] Funguje Wi-Fi.
* [ ] Funguje externí monitor.
* [ ] Funguje klávesnice.
* [ ] Funguje touchpad.
* [ ] Funguje Firefox.
* [ ] Funguje Terminál.

Pokud některá z těchto věcí nefunguje, instalaci zatím neprovádět a nejprve problém vyřešit.

---

# 4. Připravené informace

Připravit si:

* [ ] Uživatelské jméno.
* [ ] Název počítače.
* [ ] Heslo k uživatelskému účtu.
* [ ] Heslo k Wi-Fi.
* [ ] Přihlašovací údaje ke GitHubu.
* [ ] Přihlašovací údaje ke Google účtu.

Poznámka:

Do dokumentace nikdy nezapisovat skutečná hesla.

---

# 5. Příprava notebooku

* [ ] Připojit napájecí adaptér.
* [ ] Připojit externí monitor.
* [ ] Připojit klávesnici (pokud je potřeba).
* [ ] Připravit druhý notebook s Windows.
* [ ] Otevřít tuto dokumentaci na druhém notebooku.

---

# 6. Připravené soubory

Připravit:

* [ ] setup.sh
* [ ] orca-fix.sh
* [ ] Linux Setup – moje dokumentace

---

# 7. Před spuštěním instalace

Poslední kontrola:

* [ ] Data jsou zazálohovaná.
* [ ] Instalační USB bylo vyzkoušeno.
* [ ] Live systém funguje správně.
* [ ] Dokumentace je připravena.
* [ ] Druhý notebook je po ruce.
* [ ] Jsem připraven začít instalaci.

Teprve po splnění všech bodů spustit instalaci Ubuntu.

---

# Poznámky

Pokud si nejsem jistý některým krokem, instalaci nepokračuji. Nejprve problém vyřeším nebo doplním dokumentaci. Cílem není rychlá instalace, ale spolehlivý a dlouhodobě funkční systém.


# Orca

## Stav kapitoly

* [ ] Ověřeno na mém notebooku
* [ ] Otestováno po čisté instalaci Ubuntu
* [ ] Přidáno do setup.sh
* [ ] Vyřešeny známé problémy

---

# Co je Orca

Orca je hlavní čtečka obrazovky pro prostředí GNOME a MATE. Pro komunikaci s aplikacemi využívá přístupnostní vrstvu AT-SPI a pro syntézu řeči spolupracuje se Speech Dispatcherem a hlasovou syntézou RHVoice.

Bez správně fungující Orcy není možné pohodlně ovládat systém. Proto je tato kapitola jednou z nejdůležitějších částí celé dokumentace.

---

# Spuštění Orcy

## Spuštění z terminálu

```bash
orca
```

---

## Restart běžící instance

```bash
orca --replace
```

Tento příkaz ukončí běžící instanci Orcy a okamžitě spustí novou.

---

## Nastavení Orcy

Z terminálu:

```bash
orca -s
```

Nebo klávesovou zkratkou:

**Insert + Mezerník**

---

# Doporučené nastavení

Po instalaci systému nastavit:

* Speech Dispatcher
* RHVoice
* Jazyk: Čeština
* Hlas: Zdeněk
* Upravit rychlost řeči podle potřeby
* Upravit interpunkci podle potřeby

---

# Klávesové zkratky

| Funkce         | Zkratka           |
| -------------- | ----------------- |
| Nastavení Orcy | Insert + Mezerník |
| Restart Orcy   | `orca --replace`  |
| Spuštění Orcy  | `orca`            |

(Tabulku budu postupně rozšiřovat.)

---

# Diagnostika

## Verze Orcy

```bash
orca --version
```

---

## Zjistit, zda běží

```bash
pgrep orca
```

nebo

```bash
ps -ef | grep orca
```

---

# Konfigurační soubory

Nastavení Orcy:

```text
~/.local/share/orca
```

Tuto složku lze v krajním případě odstranit a Orca vytvoří nové výchozí nastavení.

---

# Nouzová oprava

## Orca přestala mluvit během práce

Stisknout:

Alt + F2

Zadat:

```bash
orca --replace
```

Potvrdit klávesou Enter.

---

## Orca se po restartu nespustí

Otevřít terminál:

Ctrl + Alt + T

Zadat:

```bash
rm -rf ~/.local/share/orca
```

Poté spustit:

```bash
orca
```

---

## Orca vůbec nereaguje

Postupně zadat:

```bash
killall -9 orca
killall -9 at-spi2-registryd
killall -9 at-spi-bus-launcher
orca --replace
```

---

## Orca se spustí, ale nic nečte

Zapnout přístupnost:

```bash
gsettings set org.gnome.desktop.interface toolkit-accessibility true
```

Poté restartovat relaci nebo celý počítač.

---

## Orca mluví jen občas

Restart PipeWire:

```bash
systemctl --user restart pipewire
```

nebo u PulseAudio:

```bash
pulseaudio -k
```

---

# Kompletní nouzový postup

Pokud nefunguje vůbec nic, zadat postupně:

```bash
killall -9 orca
killall -9 at-spi2-registryd
killall -9 at-spi-bus-launcher
gsettings set org.gnome.desktop.interface toolkit-accessibility true
systemctl --user restart pipewire
orca --replace
```

Pokud nepomůže, provést reset nastavení:

```bash
rm -rf ~/.local/share/orca
```

a znovu spustit Orcu.

---

# Skript orca-fix.sh

Pro běžné opravy používat vlastní skript:

```text
orca-fix.sh
```

Skript provádí:

* restart Orcy,
* restart AT-SPI,
* restart zvuku,
* kontrolu přístupnosti,
* volitelně reset nastavení.

---

# Nejčastější problémy

| Problém               | Řešení                                     |
| --------------------- | ------------------------------------------ |
| Orca nemluví          | `orca --replace`                           |
| Orca nejde spustit    | Restartovat Orcu nebo použít `orca-fix.sh` |
| Orca nečte aplikace   | Zapnout `toolkit-accessibility`            |
| RHVoice není vidět    | Restart Speech Dispatcher                  |
| Zvuk funguje, Orca ne | Restart PipeWire                           |

---

# Krizové situace

## Situace 1

**Orca přestala mluvit během práce.**

Řešení:

1. `orca --replace`
2. Pokud nepomůže, použít `orca-fix.sh`

---

## Situace 2

**Po restartu notebooku je ticho.**

Řešení:

1. Spustit Orcu.
2. Pokud nepomůže, resetovat nastavení.
3. Spustit `orca-fix.sh`.

---

## Situace 3

**RHVoice zmizel z nabídky.**

Řešení:

Restartovat Speech Dispatcher a znovu otevřít nastavení Orcy.

---

## Situace 4

**Zvuk funguje, ale Orca nemluví.**

Řešení:

Restartovat PipeWire nebo PulseAudio.

---

# Ověřeno v praxi

Distribuce:

Ubuntu 26.04 LTS

Verze Orcy:

Datum:

Výsledek:

---

# Poznámky

Sem budu zapisovat všechny nové poznatky, problémy a jejich řešení. Do této kapitoly budou přidávány nové klávesové zkratky, postupy a zkušenosti získané při běžném používání systému.


# RHVoice

## Cíl

Nainstalovat českou hlasovou syntézu RHVoice a hlas **Zdeněk** pro použití s Orcou.

---

## Instalace

### 1. Aktualizace seznamu balíčků

sudo apt update

### 2. Instalace RHVoice

sudo apt install rhvoice speech-dispatcher-rhvoice

### 3. Instalace českého hlasu

sudo apt install rhvoice-czech

## Ověření instalace

Vypsání dostupných hlasů:

rhvoice-test -l

Test syntézy:

spd-say -o rhvoice -l cs "Instalace byla úspěšná."

Pokud hlas promluví, je RHVoice správně nainstalovaný.

## Nastavení v Orcě

1. Otevřít nastavení Orcy.

   * Klávesová zkratka: **Insert + Mezerník**
   * Pokud nefunguje:

orca -s

2. Otevřít kartu **Hlas**.

3. Vybrat syntetizér **Speech Dispatcher**.

4. Vybrat jazyk **Čeština**.

5. Vybrat hlas **Zdeněk**.

6. Potvrdit tlačítky **Použít** a **OK**.

## Když Orca RHVoice nevidí

Restartovat Speech Dispatcher:

killall speech-dispatcher

Potom ověřit funkčnost:

spd-say "Test"

Pokud se hlas stále neobjeví, spustit:

speech-dispatcher --spawn

a znovu otevřít nastavení Orcy.


## Poznámky

* Po každé větší aktualizaci systému zkontrolovat, že RHVoice stále funguje.
* Před úpravou konfigurace Orcy vždy nejprve otestovat RHVoice pomocí `spd-say`.
* Pokud `spd-say` funguje a Orca nemluví, je problém pravděpodobně v nastavení Orcy, nikoliv v RHVoice.


# RHVoice – Stav kapitoly

| Položka | Stav |
|---------|------|
| Ověřeno na mém notebooku | ☐ |
| RHVoice nainstalován | ☐ |
| Hlas Zdeněk funkční | ☐ |
| Přidáno do setup.sh | ☐ |
| Dokumentace dokončena | ☐ |

## Diagnostika

### Ověření nainstalovaných hlasů

rhvoice-test -l

### Ověření Speech Dispatcher

spd-say "Test"

### Restart Speech Dispatcher

killall speech-dispatcher
speech-dispatcher --spawn

### Kontrola běžící služby

ps -ef | grep speech-dispatcher

nebo

systemctl --user status speech-dispatcher

## Umístění konfigurace

Uživatelská konfigurace:

~/.config/speech-dispatcher/

Systémová konfigurace:

/etc/speech-dispatcher/

## Nejčastější problémy

| Problém | Pravděpodobná příčina | Řešení |
|---------|-----------------------|--------|
| `spd-say` nemluví | RHVoice nebo Speech Dispatcher není správně nainstalován | Zkontrolovat balíčky |
| `spd-say` mluví, Orca ne | Nastavení Orcy | Zkontrolovat Speech Dispatcher v Orcě |
| Hlas Zdeněk chybí | Speech Dispatcher potřebuje restart | Restartovat Speech Dispatcher |
| Hlas zmizel po aktualizaci | Poškozené nebo chybějící balíčky | Znovu nainstalovat RHVoice |

## Ověřeno v praxi

Distribuce:

Ubuntu 26.04 LTS

Datum:

Výsledek:

Poznámky:


Lokální AI
Účel
Lokální AI nebude připojena k internetu.
Bude sloužit pouze pro:
• 
kontrolu smluv,
• 
kontrolu faktur,
• 
analýzu dokumentů,
• 
práci s Markdown soubory,
• 
osobní znalostní databázi.
 
Požadavky
• 
běh na CPU
• 
možnost běhu na GPU Intel (pokud bude podporováno)
• 
čeština
• 
jednoduchá instalace
• 
jednoduché aktualizace
 
Kandidáti
☐ LM Studio
☐ Ollama
☐ Open WebUI
 
Modely
☐ Gemma
☐ Gemma 3
☐ Phi
☐ Mistral
☐ Llama
 
Ověřit
☐ Rychlost
☐ Spotřeba RAM
☐ Kvalita češtiny
☐ Práce s PDF
☐ Práce s Markdown
☐ Práce se smlouvami
☐ Práce s fakturami

# update.sh

## Účel

Skript `update.sh` slouží k pravidelné aktualizaci systému Ubuntu.

Provádí:

* aktualizaci seznamu balíčků,
* instalaci dostupných aktualizací,
* aktualizaci Snap aplikací,
* odstranění nepotřebných balíčků,
* vyčištění lokální cache balíčků.

---

## Použití

```bash
./update.sh
```

---

## Kód skriptu

```bash
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
```

---

## Nastavení oprávnění

Po vytvoření souboru je potřeba nastavit právo ke spuštění:

```bash
chmod +x update.sh
```

---

## Doporučené použití

Skript spouštět pravidelně, například jednou týdně.

Pokud se během aktualizace instalovalo nové jádro nebo důležité systémové služby, je vhodné počítač restartovat.

---

## Poznámky

Tento skript nemění konfiguraci systému. Pouze aktualizuje a uklízí balíčky.


# Proč jsem přešel na Linux

Mám rád, když mám svůj počítač pod kontrolou. Nelíbí se mi, kam v posledních letech směřuje operační systém Windows. Často mám pocit, že jsem na svém vlastním počítači spíše hostem než skutečným uživatelem. Chci prostředí, které bude sloužit mně, ne já jemu.

Na Linuxu se mi líbí možnost přizpůsobit si systém přesně podle svých potřeb. Mohu si ho upravit, automatizovat a přizpůsobit svému způsobu práce. Jsem smířený s tím, že se občas mohou objevit chyby nebo problémy. Beru to jako daň za svobodný operační systém, který mám pod svou kontrolou.

Dalším důvodem je, že nechci být závislý na jednom výrobci a obecně dávám přednost open source řešením. Neznamená to však, že budu za každou cenu používat pouze open source software. Pokud mi nějaká proprietární aplikace vyhovuje více, nemám problém ji používat. Důležité pro mě je, aby mi dobře sloužila. Zároveň mám rád systém, který si mohu v případě potřeby opravit sám.

Linux je také méně náročný na systémové prostředky než Windows. Díky tomu mohu efektivněji využít výkon svého notebooku například pro provoz lokální AI, práci s dokumenty, analýzu smluv nebo kontrolu faktur.

Velkou roli hraje také přístupnost. Windows má kvalitní podporu pro nevidomé uživatele, ale narazil jsem na situace, které mi výrazně komplikovaly práci. Občas se po spuštění počítače zobrazila obrazovka s novými podmínkami používání. Čtečka obrazovky na ní nefungovala, text byl drobný a bez potvrzení podmínek nebylo možné pokračovat do systému. Je to moje osobní zkušenost a netvrdím, že se to děje každému uživateli. Přesto je to jeden z důvodů, proč hledám jiné řešení.

Ubuntu znám už mnoho let a mám ho opravdu rád. Přestože přístupnost není ve všech situacích dokonalá, jsem na případné problémy připravený. Mám vlastní opravné skripty, dokumentaci i ověřené postupy. Mým cílem není mít bezchybný systém, ale systém, kterému rozumím, který si dokážu opravit a který mám plně pod kontrolou.

Tato dokumentace vzniká právě proto, aby byl celý systém snadno obnovitelný, dobře zdokumentovaný a dlouhodobě udržitelný.

