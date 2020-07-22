# Quick Start
1. Install latest os updates
```bash
sudo apt update && sudo apt full-upgrade -y
```
2. Install docker
```bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```
3. Configure ssh and ufw from files here: https://github.com/jim-brighter/pihole
4. Run the start_pihole.sh script
```bash
curl -LO https://raw.githubusercontent.com/jim-brighter/pihole/master/start_pihole.sh
chmod +x start_pihole.sh
./start_pihole.sh <password> <ip>
```

---

### Increase font size
```bash
sudo dpkg-reconfigure console-setup
```

### Change keyboard layout
```bash
sudo raspi-config
```
Then change localisation options

### SSH
```bash
sudo raspi-config
```
Network Options
