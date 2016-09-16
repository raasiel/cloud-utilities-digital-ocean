# install some basic stuff

apt-get install mc zip
./scripts/docker-compose-install.sh
./scripts/node-and-tools-install.sh
./scripts/docker-images-pull.sh
sh ./scripts/docker-compose-install.sh
sh ./scripts/node-and-tools-install.sh
sh ./scripts/docker-images-pull.sh
cd /root
wget http://downloads.rclone.org/rclone-current-linux-amd64.zip
unzip rclone-current-linux-amd64.zip
cd rclone-current-linux-amd64
cp rclone /usr/bin/rclone

#date +%F-%H-%M-%S