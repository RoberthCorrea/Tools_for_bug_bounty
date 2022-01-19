#!/bin/bash


echo "Instalando Python3"

sudo apt update
sudo apt -y install python3 python3-pip


echo "Instalando JQ"

sudo apt -y install jq

echo "Instalando Takeover"

wget -q https://raw.githubusercontent.com/m4ll0k/takeover/master/takeover.py


echo "Instalando Go"

wget https://go.dev/dl/go1.17.6.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.17.6.linux-amd64.tar.gz
rm -rf go1.17.6.linux-amd64.tar.gz
cd /usr/local/go/bin
cp go /usr/local/bin
echo ' ' >> $HOME/.bashrc
echo 'export GOPATH=$HOME/go' >> $HOME/.bashrc
echo 'export PATH=$PATH:$GOROOT/bin:$GOPATH/bin' >> $HOME/.bashrc
echo 'export GOROOT=$HOME/go' >> $HOME/.bashrc


echo "Instalando Anew"

/usr/local/go/bin/go install github.com/tomnomnom/anew@latest
ln -s $HOME/go/bin/anew /usr/bin/anew


echo "Instalando Assetfinder"

/usr/local/go/bin/go install -v github.com/tomnomnom/assetfinder@latest
ln -s $HOME/go/bin/assetfinder /usr/bin/assetfinder


echo "Instalando Findomain"
cd ~/ferramentas_de_bug_bounty
wget https://github.com/Findomain/Findomain/releases/download/5.1.1/findomain-linux
mv findomain-linux findomain
cp findomain /usr/local/bin/
chmod +x /usr/local/bin/findomain


echo "Instalando DNSX"

/usr/local/go/bin/go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest
ln -s $HOME/go/bin/dnsx /usr/bin/dnsx


echo "Instalando Naabu"

sudo apt install -y libpcap-dev
/usr/local/go/bin/go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
ln -s $HOME/go/bin/naabu /usr/bin/naabu


echo "Instalando HTTPX"

/usr/local/go/bin/go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
ln -s $HOME/go/bin/httpx /usr/bin/httpx


echo "Instalando Nuclei"

/usr/local/go/bin/go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
ln -s $HOME/go/bin/nuclei /usr/bin/nuclei


echo "Instalando Qsreplace"

/usr/local/go/bin/go install -v github.com/tomnomnom/qsreplace@latest
ln -s $HOME/go/bin/qsreplace /usr/bin/qsreplace


echo "Instalando Gau"

/usr/local/go/bin/go install -v github.com/lc/gau/v2/cmd/gau@latest
ln -s $HOME/go/bin/gau /usr/bin/gau


echo "Instalando Subfinder"

apt install unzip
cd ~/ferramentas_de_bug_bounty
wget https://github.com/projectdiscovery/subfinder/releases/download/v2.4.9/subfinder_2.4.9_linux_amd64.zip
unzip subfinder_2.4.9_linux_amd64.zip
cp subfinder /usr/local/bin/
chmod +x /usr/local/bin/subfinder


echo "Instalando git-dumpler"

cd ~/ferramentas_de_bug_bounty
git clone https://github.com/arthaud/git-dumper.git
cd ~/ferramentas_de_bug_bounty/git-dumper
pip install -r requirements.txt


echo "Instalando GF"

/usr/local/go/bin/go install github.com/tomnomnom/gf@latest
ln -s $HOME/go/bin/gf /usr/bin/gf

bash
