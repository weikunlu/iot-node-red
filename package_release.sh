
source .env

cd nodered
result=$(grep "version" ./package.json)
echo 'show version:' $result
if [[ "    \"version\"      : \"$TAG\"," == $result ]]; then
  # Do nothing
  echo "ok"
else
  git checkout tags/$TAG
fi
grunt clean
grunt release

cd .dist
tar -cvzf node-red-$TAG.tar node-red-$TAG
mv node-red-$TAG.tar ../../
