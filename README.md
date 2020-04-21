# Diplomka

Zastřešující repozitář pro diplomovou práci na téma: **Návrh hardwarového stimulátoru pro neuroinformatické experimenty**

![](https://github.com/stechy1/diplomka-frontend/raw/master/images/01_angular_experiments_list.png)

Při klonování repozitáře je třeba naklonovat také submoduly.
Příkaz pro klonování všeho: `git clone --recurse-submodules git@github.com:stechy1/diplomka-parent.git`.

Pro instalaci dávislostí všech modulů slouží příkaz `install.sh`.
Pro vytvoření složky s produkční verzí serveru s klientem je příkaz `build-production.sh`.
Ke spuštění serveru je příkaz `run.sh`.

Ke spuštění e2e testů s využitím plně produkčního serveru je příkaz `e2e.sh`.


Seznam závislosti:
 - NodeJS
   - instalace:
      ```
      # Using Ubuntu
      curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
      sudo apt-get install -y nodejs
      ```
 - PlatformIO
   - instalace:
      ```
      curl -fsSL https://raw.githubusercontent.com/platformio/platformio-core-installer/master/get-platformio.py -o get-platformio.py
      python3 get-platformio.py
      export PATH=$PATH:~/.platformio/penv/bin
      ```