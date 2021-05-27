# Quick Start
```bash
sudo dpkg-reconfigure console-setup

# 1. Change font size

sudo apt update && sudo apt full-upgrade -y
sudo apt install -y vim git ufw

sudo raspi-config

# 1. Change Localization Options (keyboard and language)
# 2. Enable ssh server in Interfacing Options
# 3. Logout and connect via ssh for the rest of the setup

sudo sed -i -e 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
sudo sed -i -e 's/UsePAM yes/UsePAM no/' /etc/ssh/sshd_config

# verify these 3 actually worked

mkdir ~/.ssh
vim ~/.ssh/authorized_keys

# paste your public key here and exit vim

sudo reboot now

###

sudo ufw enable
sudo ufw default deny
sudo ufw allow from any to any port 67 proto tcp
sudo ufw allow from any to any port 67 proto udp
sudo ufw allow from any to any port 546:547 proto udp
sudo ufw allow from 192.168.1.0/24 to any port 80 proto tcp
sudo ufw allow from 192.168.1.0/24 to any port 53 proto tcp
sudo ufw allow from 192.168.1.0/24 to any port 53 proto udp
sudo ufw allow from 192.168.1.0/24 to any port 4711:4720 proto tcp
sudo ufw allow from 192.168.1.0/24 to any port 22 proto tcp
sudo ufw status verbose

# verify rules

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

sudo usermod -aG docker pi

# logout and login again

curl -LO https://raw.githubusercontent.com/jim-brighter/pihole/master/start_pihole.sh
chmod +x start_pihole.sh
ifconfig # note ip address
./start_pihole.sh <password> <ip address>

git clone https://github.com/jim-brighter/pi-dashboard.git
cd pi-dashboard/
docker login -u <user> -p <password>
./scripts/prod-build.sh

```
