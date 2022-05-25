#!/bin/bash


echo "Instalando Python3"

sudo apt update
sudo apt -y install python3 python3-pip


echo "Instalando JQ"

sudo apt -y install jq

echo "Instalando Takeover"

wget -q https://raw.githubusercontent.com/m4ll0k/takeover/master/takeover.py


echo "Instalando Go"

wget https://go.dev/dl/go1.18.1.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.18.1.linux-amd64.tar.gz
rm -rf go1.18.1.linux-amd64.tar.gz
cd /usr/local/go/bin
cp go /usr/local/bin
echo ' ' >> $HOME/.bashrc
echo 'export GOPATH=$HOME/go' >> $HOME/.bashrc
echo 'export PATH=$PATH:$GOROOT/bin:$GOPATH/bin' >> $HOME/.bashrc


echo "Instalando Anew"

/usr/local/go/bin/go install github.com/tomnomnom/anew@latest
ln -s $HOME/go/bin/anew /usr/bin/anew


echo "Instalando Waybackurls"

/usr/local/go/bin/go install github.com/tomnomnom/waybackurls@latest
ln -s $HOME/go/bin/waybackurls /usr/bin/waybackurls

echo "Instalando Bhedak"

pip3 install bhedak
wget -O bhedak https://raw.githubusercontent.com/R0X4R/bhedak/main/bhedak.py -q && chmod +x bhedak && mv bhedak /usr/bin/

echo "Instalando Airixss"

go install github.com/chromedp/chromedp@latest
/usr/local/go/bin/go install github.com/ferreiraklet/airixss@latest
ln -s $HOME/go/bin/airixss /usr/bin/airixss

echo "Instalando Assetfinder"

/usr/local/go/bin/go install github.com/tomnomnom/assetfinder@latest
ln -s $HOME/go/bin/assetfinder /usr/bin/assetfinder


echo "Instalando Findomain"
cd ~/ferramentas_de_bug_bounty
wget https://github.com/Findomain/Findomain/releases/download/5.1.1/findomain-linux
mv findomain-linux findomain
cp findomain /usr/local/bin/
chmod +x /usr/local/bin/findomain


echo "Instalando Uro"
pip3 install uro


echo "Instalando DNSX"

/usr/local/go/bin/go install github.com/projectdiscovery/dnsx/cmd/dnsx@latest
ln -s $HOME/go/bin/dnsx /usr/bin/dnsx

echo "Instalando Notify"

/usr/local/go/bin/go install -v github.com/projectdiscovery/notify/cmd/notify@latest
ln -s $HOME/go/bin/notifi /usr/bin/notify


echo "Instalando Kxss"

/usr/local/go/bin/go install github.com/Emoe/kxss@latest
ln -s $HOME/go/bin/kxss /usr/bin/kxss

echo "Instalando Meg"

/usr/local/go/bin/go install github.com/tomnomnom/meg@latest
ln -s $HOME/go/bin/meg /usr/bin/meg


echo "Instalando Naabu"

sudo apt install -y libpcap-dev
/usr/local/go/bin/go install github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
ln -s $HOME/go/bin/naabu /usr/bin/naabu


echo "Instalando HTTPX"

/usr/local/go/bin/go install github.com/projectdiscovery/httpx/cmd/httpx@latest
ln -s $HOME/go/bin/httpx /usr/bin/httpx


echo "Instalando Nuclei"

/usr/local/go/bin/go install github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
ln -s $HOME/go/bin/nuclei /usr/bin/nuclei
nuclei -update
nuclei -update-templates


echo "Instalando Qsreplace"

/usr/local/go/bin/go install github.com/tomnomnom/qsreplace@latest
ln -s $HOME/go/bin/qsreplace /usr/bin/qsreplace


echo "Instalando Gau"

/usr/local/go/bin/go install github.com/lc/gau/v2/cmd/gau@latest
ln -s $HOME/go/bin/gau /usr/bin/gau


echo "Instalando Amass"

go install -v github.com/OWASP/Amass/v3/...@master


echo "Instalando Mapcidr"
/usr/local/go/bin/go install -v github.com/projectdiscovery/mapcidr/cmd/mapcidr@latest
ln -s $HOME/go/bin/mapcidr /usr/bin/mapcidr


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

echo "Instalando ParamSpider"

cd ~/ferramentas_de_bug_bounty
git clone https://github.com/devanshbatham/ParamSpider
cd ~/ferramentas_de_bug_bounty/ParamSpider
pip3 install -r requirements.txt
cd ~/ferramentas_de_bug_bounty

echo "Instalando gf"

/usr/local/go/bin/go install -v github.com/tomnomnom/gf@latest
ln -s $HOME/go/bin/gf /usr/bin/gf
echo 'source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.bashrc
mkdir ~/.gf
cd ~/ferramentas_de_bug_bounty
git clone https://github.com/1ndianl33t/Gf-Patterns
mv ~/ferramentas_de_bug_bounty/Gf-Patterns/*.json ~/.gf

echo "Instalando urldedupe"

cd ~/ferramentas_de_bug_bounty
git clone https://github.com/ameenmaali/urldedupe.git
cd urldedupe
apt install -y cmake
cmake CMakeLists.txt
make
cp urldedupe /usr/bin/
cd ~/ferramentas_de_bug_bounty

bash
