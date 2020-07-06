sudo apt-get update
sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get update

sudo apt-get install -y nodejs

sudo npm install -g pm2

pm2 start /home/vagrant/server/bin/www
pm2 startup