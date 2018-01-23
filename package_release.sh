
source .env

cd nodered

grunt release

cd .dist

tar -cvzf node-red.tar node-red-$TAG

mv node-red.tar ../../
