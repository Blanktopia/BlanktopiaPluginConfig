#!/bin/bash

# scp weiwen@ssh.piggyp.ink:/opt/nomad/volumes/blanktopia/plugins/Moromoro/pack.zip .

HASH=$(shasum pack.zip | cut -d' ' -f1)

mv pack.zip dist/Blanktopia-$HASH.zip
rsync -iavzhP dist/ weiwen@ssh.piggyp.ink:/opt/nomad/volumes/files/ --rsync-path="sudo rsync"

echo $HASH

scp weiwen@ssh.piggyp.ink:/opt/nomad/volumes/blanktopia/plugins/Moromoro/config.yml dist/config.yml
sed -i -e "s/^resource-pack-url: .*\$/resource-pack-url: http:\/\/files.blanktopia.com\/Blanktopia-$HASH.zip/" -e "s/^resource-pack-hash: .*\$/resource-pack-hash: $HASH/" dist/config.yml
scp dist/config.yml weiwen@ssh.piggyp.ink:/opt/nomad/volumes/blanktopia/plugins/Moromoro/config.yml
