# install some basic stuff

apt-get install mc
chmod +x ./scripts/docker-compose-install.sh
chmod +x ./scripts/node-and-tools-install.sh
chmod +x ./scripts/docker-images-pull.sh
./scripts/docker-compose-install.sh
./scripts/node-and-tools-install.sh
./scripts/docker-images-pull.sh