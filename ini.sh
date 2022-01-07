#!/bin/bash

echo "Instalando Python3"

sudo apt update
sudo apt -y install python3 python3-pip

echo "Instalando JQ"

sudo apt -y install jq

echo "Instalando Go"

wget https://go.dev/dl/go1.17.6.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.5.linux-amd64.tar.gz
rm -rf go1.17.6.linux-amd64.tar.gz
cd /usr/local/go/bin
cp go /usr/local/bin
echo ' ' >> $HOME/.bashrc
echo 'export GOPATH=$HOME/go' >> $HOME/.bashrc
echo 'export PATH=$PATH:$GOROOT/bin:$GOPATH/bin' >> $HOME/.bashrc


echo "Instalando Anew"

/usr/local/go/bin/go install github.com/tomnomnom/anew@latest
ln -s $HOME/go/bin/anew /usr/bin/anew
