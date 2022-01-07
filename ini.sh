#!/bin/bash

echo "Instalando Python3"

sudo apt-get update
sudo apt-get -y install python3-pip

echo "Instalando JQ"

sudo apt-get -y install jq

echo "Instalando Go"

wget -c https://go.dev/dl/go1.17.6.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.17.6.linux-amd64.tar.gz
rm -rf go1.17.6.linux-amd64.tar.gz

if [ -f "$HOME/.zshrc" ]; then
  echo 'export PATH=$PATH:/usr/local/go/bin' >> $HOME/.zshrc
else
  echo 'export PATH=$PATH:/usr/local/go/bin' >> $HOME/.bashrc
fi

echo "Instalando Anew"

/usr/local/go/bin/go install github.com/tomnomnom/anew@latest
ln -s $HOME/go/bin/anew /usr/bin/anew
