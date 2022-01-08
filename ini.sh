#!/bin/bash


echo "Instalando Python3"

sudo apt update
sudo apt -y install python3 python3-pip


echo "Instalando JQ"

sudo apt -y install jq


echo "Instalando Go"

wget https://go.dev/dl/go1.17.6.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.17.6.linux-amd64.tar.gz
rm -rf go1.17.6.linux-amd64.tar.gz
cd /usr/local/go/bin
cp go /usr/local/bin
echo ' ' >> $HOME/.bashrc
echo 'export GOPATH=$HOME/go' >> $HOME/.bashrc
echo 'export PATH=$PATH:$GOROOT/bin:$GOPATH/bin' >> $HOME/.bashrc


echo "Instalando Anew"

/usr/local/go/bin/go install github.com/tomnomnom/anew@latest
ln -s $HOME/go/bin/anew /usr/bin/anew


echo "Instalando Subfinder"

echo 'export GOROOT=$HOME/go' >> $HOME/.bashrc
bash
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest


echo "Instalando Assetfinder"

/usr/local/go/bin/go install github.com/tomnomnom/assetfinder@latest
ln -s $HOME/go/bin/assetfinder /usr/bin/assetfinder


echo "Instalando Findomain"

wget https://github.com/Findomain/Findomain/releases/download/5.1.1/findomain-linux
mv findomain-linux findomain
cp findomain /usr/local/bin/
chmod +x /usr/local/bin/findomain


echo "Instalando DNSX"

go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest


echo "Instalando Naabu"

sudo apt install -y libpcap-dev
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest


echo "Instalando HTTPX"

go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest


echo "Instalando Nuclei"


go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest


echo "Instalando Qsreplace"


go install -v github.com/tomnomnom/qsreplace@latest

echo "Instalando Gau"


go install -v github.com/lc/gau/v2/cmd/gau@latest


echo "Instalando GF"

/usr/local/go/bin/go install github.com/tomnomnom/gf@latest
ln -s $HOME/go/bin/gf /usr/bin/gf
