# Diplomka

Zastřešující repozitář pro diplomovou práci na téma: **Návrh hardwarového stimulátoru pro neuroinformatické experimenty**

![](https://github.com/stechy1/diplomka-frontend/raw/master/images/01_angular_experiments_list.png)

Při klonování repozitáře je třeba naklonovat také submoduly.
Příkaz pro klonování všeho: `git clone --recurse-submodules git@github.com:stechy1/diplomka-parent.git`.

Pro instalaci celého modulu slouží příkaz `update.sh`.
Ke spuštění serveru je příkaz `run.sh`.


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