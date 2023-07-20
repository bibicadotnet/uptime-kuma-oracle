timedatectl set-timezone Asia/Ho_Chi_Minh

sudo apt remove iptables-persistent -y && sudo ufw disable && sudo iptables -F

sudo fallocate -l 4G /swapfile && sudo chmod 600 /swapfile && sudo mkswap /swapfile && sudo swapon /swapfile && echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

sudo apt update -y

curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -
sudo apt-get install -y nodejs

git clone https://github.com/louislam/uptime-kuma.git
cd uptime-kuma/
npm run setup
npm install pm2 -g && pm2 install pm2-logrotate
pm2 start server/server.js --name uptime-kuma
pm2 save && pm2 startup

sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/webinoly/master/weby -O weby && sudo chmod +x weby && sudo ./weby -clean
sudo rm /opt/webinoly/webinoly.conf
sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/Oracle-VM-Standard-A1-Flex-Webinoly/main/vm_standard_a1_flex.conf -O /opt/webinoly/webinoly.conf
sudo stack -nginx -build=light
