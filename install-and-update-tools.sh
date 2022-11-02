#!/bin/sh

# update generated on 11-2-22
sudo apt-get update 
sudo apt-get dist-upgrade -y
echo "export PATH=$PATH:$HOME/.local/bin" >> ~/.bashrc
echo "export PATH=$PATH:$HOME/.local/bin" >> ~/.zshrc
export PATH=$PATH:$HOME/.local/bin

sudo apt install sherlock -y
sudo apt install -y
sudo apt install python3-shodan -y
sudo apt install spiderfoot -y
sudo apt install sherlock -y
sudo apt install maltego -y
sudo apt install python3-shodan -y
sudo apt install theharvester -y
sudo apt install webhttrack -y
sudo apt install outguess -y
sudo apt install stegosuite -y
sudo apt install wireshark -y
sudo apt install openvpn -y
sudo apt install metagoofil -y
sudo apt install eyewitness -y
sudo apt install exifprobe -y
sudo apt install ruby-bundler -y
sudo apt install recon-ng -y
sudo apt install cherrytree -y
sudo apt install instaloader -y
sudo apt install photon -y
sudo apt install sublist3r -y
sudo apt install osrframework -y
sudo apt install joplin -y
sudo apt install drawing -y
sudo apt install finalrecon -y


pip3 install --upgrade tweepy
pip3 install --upgrade exifread 
pip3 install --upgrade youtube-dl
pip3 install --upgrade fake_useragent
pip3 install --upgrade dnsdumpster
pip3 install --upgrade h8mail
pip3 install --upgrade shodan
pip3 install --upgrade toutatis
pip3 install --upgrade yt-dlp


mkdir -p ~/github-tools
cd ~/github-tools

#mkdir -p /usr/share/phoneinfoga
#wget https://github.com/sundowndev/phoneinfoga/releases/download/v2.0.8/phoneinfoga_$(uname -s)_$(uname -m).tar.gz -O /usr/share/phoneinfoga/phoneinfoga_$(uname -s)_$(uname -m).tar.gz
#cd /usr/share/phoneinfoga
#tar xvf phoneinfoga_$(uname -s)_$(uname -m).tar.gz
#chmod +x /usr/bin/phoneinfoga

if [ -d "~/github-tools/sn0int" ]; then
    cd sn0int
    git pull 
    sudo cargo install -f --path .
    cd ..
else
    git clone --recursive https://github.com/kpcyrd/sn0int.git 
    cd ~/github-tools/sn0int
    sudo cargo install -f --path .
    export PATH=/root/.cargo/bin:$PATH
    cd ..
fi


sudo npm i -g tiktok-scraper



# Install Vortimo
vortimo_debian=$(curl -s https://www.vortimo.com/down/ | grep --color -E "[^\S ]*Vortimo-.*[0-9].deb" -o | awk -F '="' '{print $2}')
vortimo_package=$(echo $vortimo_debian | awk -F '/' '{print $NF}')
curl -O -s $vortimo_debian
sudo dpkg -i $vortimo_package
rm $vortimo_package

# install twayback
if [ -d "~/github-tools/toutatis" ]; then
    cd twayback
    git pull
    pip3 install -r requirements.txt
    cd ..
else
    git clone https://github.com/humandecoded/twayback.git 
    cd twayback
    pip3 install -r  requirements.txt
    cd ..
fi

# Install Obsidian app image
cd ~/Desktop
wget -O Obsidian-1.0.3.AppImage https://github.com/obsidianmd/obsidian-releases/releases/download/v1.0.3/Obsidian-1.0.3.AppImage 
chmod +x Obsidian-1.0.3.AppImage



