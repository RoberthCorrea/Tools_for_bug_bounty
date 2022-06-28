#!/bin/bash


installPython3() {
  printf "${YELLOW}[*]${CLEAN} Installing Python3${END}"

  sudo apt update
  sudo apt -y install python3 python3-pip

  printf "${GREEN}[+]${CLEAN} Python3 Installed${END}${END}"
}

installJQ() {
  printf "${YELLOW}[*]${CLEAN} Installing JQ${END}"

  sudo apt -y install jq

  printf "${GREEN}[+]${CLEAN} JQ Installed${END}${END}"
}

installTakeover() {
  printf "${YELLOW}[*]${CLEAN} Installing Takeover${END}"

  wget -q https://raw.githubusercontent.com/m4ll0k/takeover/master/takeover.py

  printf "${GREEN}[+]${CLEAN} Takeover Installed${END}${END}"
}

installGo() {
  printf "${YELLOW}[*]${CLEAN} Installing Go${END}"

  wget https://go.dev/dl/go1.18.1.linux-amd64.tar.gz
  rm -rf /usr/local/go && tar -C /usr/local -xzf go1.18.1.linux-amd64.tar.gz
  rm -rf go1.18.1.linux-amd64.tar.gz
  cd /usr/local/go/bin
  cp go /usr/local/bin
  echo ' ' >> $HOME/.bashrc
  echo 'export GOPATH=$HOME/go' >> $HOME/.bashrc
  echo 'export PATH=$PATH:$GOROOT/bin:$GOPATH/bin' >> $HOME/.bashrc

  printf "${GREEN}[+]${CLEAN} Go Installed${END}${END}"
}

installAnew() {
  printf "${YELLOW}[*]${CLEAN} Installing Anew${END}"

  /usr/local/go/bin/go install github.com/tomnomnom/anew@latest
  ln -s $HOME/go/bin/anew /usr/bin/anew

  printf "${GREEN}[+]${CLEAN} Anew Installed${END}${END}"
}

installWaybackurls() {
  printf "${YELLOW}[*]${CLEAN} Installing Waybackurls${END}"

  /usr/local/go/bin/go install github.com/tomnomnom/waybackurls@latest
  ln -s $HOME/go/bin/waybackurls /usr/bin/waybackurls

  printf "${GREEN}[+]${CLEAN} Waybackurls Installed${END}${END}"
}

installWaymore() {
  printf "${YELLOW}[*]${CLEAN} Installing Waymore${END}"
  
  git clone https://github.com/xnl-h4ck3r/waymore.git
  cd waymore
  sudo python3 setup.py install
  
    printf "${GREEN}[+]${CLEAN} Waymore Installed${END}${END}"
}

installBhedak() {
  printf "${YELLOW}[*]${CLEAN} Installing Behdak${END}"

  pip3 install bhedak
  wget -O bhedak https://raw.githubusercontent.com/R0X4R/bhedak/main/bhedak.py -q && chmod +x bhedak && mv bhedak /usr/bin/

  printf "${GREEN}[+]${CLEAN} Behdak Installed${END}${END}"
}

installAirixss() {
  printf "${YELLOW}[*]${CLEAN} Installing Airixss${END}"

  go install github.com/chromedp/chromedp@latest
  /usr/local/go/bin/go install github.com/ferreiraklet/airixss@latest
  ln -s $HOME/go/bin/airixss /usr/bin/airixss

  printf "${GREEN}[+]${CLEAN} Airixss Installed${END}${END}"
}

installAssetfinder() {
  printf "${YELLOW}[*]${CLEAN} Installing Assetfinder${END}"

  /usr/local/go/bin/go install github.com/tomnomnom/assetfinder@latest
  ln -s $HOME/go/bin/assetfinder /usr/bin/assetfinder

  printf "${GREEN}[+]${CLEAN} Assetfinder Installed${END}${END}"
}

installFindomain() {
  printf "${YELLOW}[*]${CLEAN} Installing Findomain${END}"
  
  cd ~/Tools_for_bug_bounty
  wget https://github.com/Findomain/Findomain/releases/download/5.1.1/findomain-linux
  mv findomain-linux findomain
  cp findomain /usr/local/bin/
  chmod +x /usr/local/bin/findomain

  printf "${GREEN}[+]${CLEAN} Findomain Installed${END}${END}"
}

installUro() {
  printf "${YELLOW}[*]${CLEAN} Installing Uro${END}"
 
  pip3 install uro

  printf "${GREEN}[+]${CLEAN} Uro Installed${END}${END}"
}

installDNSX() {
  printf "${YELLOW}[*]${CLEAN} Installing DNSX${END}"

  /usr/local/go/bin/go install github.com/projectdiscovery/dnsx/cmd/dnsx@latest
  ln -s $HOME/go/bin/dnsx /usr/bin/dnsx

  printf "${GREEN}[+]${CLEAN} DNSX Installed${END}${END}"
}

installNotify() {
  printf "${YELLOW}[*]${CLEAN} Installing Notify${END}"

  /usr/local/go/bin/go install -v github.com/projectdiscovery/notify/cmd/notify@latest
  ln -s $HOME/go/bin/notify /usr/bin/notify

  printf "${GREEN}[+]${CLEAN} Notify Installed${END}${END}"
}

installKxss() {
  printf "${YELLOW}[*]${CLEAN} Installing Kxss${END}"

  /usr/local/go/bin/go install github.com/Emoe/kxss@latest
  ln -s $HOME/go/bin/kxss /usr/bin/kxss

  printf "${GREEN}[+]${CLEAN} Kxss Installed${END}${END}"
}

installMeg() {
  printf "${YELLOW}[*]${CLEAN} Installing Meg${END}"

  /usr/local/go/bin/go install github.com/tomnomnom/meg@latest
  ln -s $HOME/go/bin/meg /usr/bin/meg

  printf "${GREEN}[+]${CLEAN} Meg Installed${END}${END}"
}

installNaabu() {
  printf "${YELLOW}[*]${CLEAN} Installing Naabu${END}"

  sudo apt install -y libpcap-dev
  /usr/local/go/bin/go install github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
  ln -s $HOME/go/bin/naabu /usr/bin/naabu

  printf "${GREEN}[+]${CLEAN} Naabu Installed${END}${END}"
}

installHTTPX() {
  printf "${YELLOW}[*]${CLEAN} Installing HTTPX${END}"

  /usr/local/go/bin/go install github.com/projectdiscovery/httpx/cmd/httpx@latest
  ln -s $HOME/go/bin/httpx /usr/bin/httpx

  printf "${GREEN}[+]${CLEAN} HTTPX Installed${END}${END}"
}

installNuclei() {
  printf "${YELLOW}[*]${CLEAN} Installing Nuclei${END}"

  /usr/local/go/bin/go install github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
  ln -s $HOME/go/bin/nuclei /usr/bin/nuclei
  nuclei -update
  nuclei -update-templates

  printf "${GREEN}[+]${CLEAN} Nuclei Installed${END}${END}"
}

installQsreplace() {
  printf "${YELLOW}[*]${CLEAN} Installing Qsreplace${END}"

  /usr/local/go/bin/go install github.com/tomnomnom/qsreplace@latest
  ln -s $HOME/go/bin/qsreplace /usr/bin/qsreplace

  printf "${GREEN}[+]${CLEAN} Qsreplace Installed${END}${END}"
}

installGau() {
  printf "${YELLOW}[*]${CLEAN} Installing Gau${END}"

  /usr/local/go/bin/go install github.com/lc/gau/v2/cmd/gau@latest
  ln -s $HOME/go/bin/gau /usr/bin/gau

  printf "${GREEN}[+]${CLEAN} Gau Installed${END}${END}"
}

installGauplus() {
  printf "${YELLOW}[*]${CLEAN} Installing Gauplus${END}"

  /usr/local/go/bin/go install github.com/bp0lr/gauplus@latest
  ln -s $HOME/go/bin/gauplus /usr/bin/gauplus

  printf "${GREEN}[+]${CLEAN} Gauplus Installed${END}${END}"
}

installDalfox() {
  printf "${YELLOW}[*]${CLEAN} Installing Dalfox${END}"
  
  cd ~/Tools_for_bug_bounty
  mkdir dalfox
  cd ~/Tools_for_bug_bounty/dalfox
  wget https://github.com/hahwul/dalfox/releases/download/v2.7.5/dalfox_2.7.5_linux_amd64.tar.gz
  tar xvf dalfox_2.7.5_linux_amd64.tar.gz
  mv dalfox /usr/bin/dalfox
  cd ~/Tools_for_bug_bounty
  
  printf "${GREEN}[+]${CLEAN} Dalfox Installed${END}${END}"
}

installAmass() {
  printf "${YELLOW}[*]${CLEAN} Installing Amass${END}"

  go install -v github.com/OWASP/Amass/v3/...@master

  printf "${GREEN}[+]${CLEAN} Amass Installed${END}${END}"
}

installMapcidr() {
  printf "${YELLOW}[*]${CLEAN} Installing Mapcidr${END}"
  
  /usr/local/go/bin/go install -v github.com/projectdiscovery/mapcidr/cmd/mapcidr@latest
  ln -s $HOME/go/bin/mapcidr /usr/bin/mapcidr

  printf "${GREEN}[+]${CLEAN} Mapcidr Installed${END}${END}"
}

installGospider() {
  printf "${YELLOW}[*]${CLEAN} Installing Gospider${END}"

  GO111MODULE=on go install github.com/jaeles-project/gospider@latest
  ln -s $HOME/go/bin/gospider /usr/bin/gospider

  printf "${GREEN}[+]${CLEAN} Gospider Installed${END}${END}"
}

installSubfinder() {
  printf "${YELLOW}[*]${CLEAN} Installing Subfinder${END}"

  apt install unzip
  cd ~/Tools_for_bug_bounty
  wget https://github.com/projectdiscovery/subfinder/releases/download/v2.4.9/subfinder_2.4.9_linux_amd64.zip
  unzip subfinder_2.4.9_linux_amd64.zip
  cp subfinder /usr/local/bin/
  chmod +x /usr/local/bin/subfinder

  printf "${GREEN}[+]${CLEAN} Subfinder Installed${END}${END}"
}
  
installGit-dumpler() {
  printf "${YELLOW}[*]${CLEAN} Installing Git-dumpler${END}"

  cd ~/Tools_for_bug_bounty
  git clone https://github.com/arthaud/git-dumper.git
  cd ~/Tools_for_bug_bounty/git-dumper
  pip install -r requirements.txt

  printf "${GREEN}[+]${CLEAN} Git-dumpler Installed${END}${END}"
}
  
installParamSpider() {
  printf "${YELLOW}[*]${CLEAN} Installing ParamSpider${END}"

  cd ~/Tools_for_bug_bounty
  git clone https://github.com/devanshbatham/ParamSpider
  cd ~/Tools_for_bug_bounty/ParamSpider
  pip3 install -r requirements.txt
  cd ~/Tools_for_bug_bounty

  printf "${GREEN}[+]${CLEAN} ParamSpider Installed${END}${END}"
}
  
installDiscovery-Header-Bug-Bounty() {
  printf "${YELLOW}[*]${CLEAN} Installing Discovery-Header-Bug-Bounty${END}"

  cd ~/Tools_for_bug_bounty
  git clone https://github.com/KingOfBugbounty/Discovery-Header-Bug-Bounty.git
  cd ~/Tools_for_bug_bounty/Discovery-Header-Bug-Bounty
  pip install -r requirements.txt
  cd ~/Tools_for_bug_bounty

  printf "${GREEN}[+]${CLEAN} Discovery-Header-Bug-Bounty Installed${END}${END}"
}

installGf() {
  printf "${YELLOW}[*]${CLEAN} Installing Gf${END}"

  /usr/local/go/bin/go install -v github.com/tomnomnom/gf@latest
  ln -s $HOME/go/bin/gf /usr/bin/gf
  mkdir ~/.gf
  cd ~/Tools_for_bug_bounty
  git clone https://github.com/1ndianl33t/Gf-Patterns
  mv ~/Tools_for_bug_bounty/Gf-Patterns/*.json ~/.gf

  printf "${GREEN}[+]${CLEAN} Gf Installed${END}${END}"
}

installUrldedupe() {
  printf "${YELLOW}[*]${CLEAN} Installing Urldedupe${END}"

  cd ~/Tools_for_bug_bounty
  git clone https://github.com/ameenmaali/urldedupe.git
  cd urldedupe
  apt install -y cmake
  cmake CMakeLists.txt
  make
  cp urldedupe /usr/bin/
  cd ~/Tools_for_bug_bounty

  printf "${GREEN}[+]${CLEAN} Urldedupe Installed${END}${END}"
}


dependenciesLinux() {
  installPython3
  installJQ
  installTakeover
  installGo
  installAnew
  installWaybackurls
  installWaymore
  installBhedak
  installAirixss
  installAssetfinder
  installFindomain
  installUro
  installDNSX
  installNotify
  installKxss
  installMeg
  installNaabu
  installHTTPX
  installNuclei
  installQsreplace
  installGau
  installGauplus
  installDalfox
  installAmass
  installMapcidr
  installGospider
  installSubfinder
  installGit-dumpler
  installParamSpider
  installDiscovery-Header-Bug-Bounty
  installGf
  installUrldedupe
  
}

currentOs="LINUX"
findCurrentOS() {
  osType=$(uname)
  case "$osType" in
    "Darwin")
      currentOs="OSX"
    ;;
    "Linux")
      currentOs="LINUX"
    ;;
    *)
      currentOs="UNKNOWN"
    ;;
  esac
}

CLEAN='\033[0m'
RED='\033[01;31m'
YELLOW='\033[01;33m'
WHITE='\033[01;37m'
GREEN='\033[01;32m'
BOLD='\033[1m'
END='\n'

main() {
  printf "${CLEAN}Welcome to ${CLEAN}${GREEN}BugBountyTools${CLEAN} installation${END}"
  printf "${YELLOW}[*]${CLEAN} Searching for your current OS${END}${END}"
  findCurrentOS

  case "$currentOs" in
    "LINUX")
      printf "${GREEN}[+]${CLEAN} Linux OS detected${END}"
      printf "${YELLOW}[*]${CLEAN} Installing dependencies ...${END}${END}"
      dependenciesLinux
    ;;
    "OSX")
      printf "${GREEN}[+]${CLEAN} MacOSX detected${END}"
      printf "${RED}[-]${CLEAN} Sorry! still Work In Progress${END}${END}"
    ;;
    "UNKNOWN")
      printf "${RED}[-]${CLEAN}Not supported OS${END}"
    ;;
  esac
}

main
