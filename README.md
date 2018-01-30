# iot-node-red
Provide a develop environment for validation

# How to build

git clone this project

git submodule init

git submodule update

create .env file and set TAG=0.17.5 for text content

./package_release.sh

docker-compose up -d

ssh into iot-node-red

cd node-red

npm install

node red.js
