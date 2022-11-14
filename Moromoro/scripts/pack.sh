#!/bin/bash

scp weiwen@ssh.piggyp.ink:/opt/nomad/volumes/blanktopia/plugins/Moromoro/pack.zip .

HASH=$(shasum pack.zip | cut -d' ' -f1)

mv pack.zip dist/Blanktopia-$HASH.zip
rsync -iavzhP dist/ weiwen@ssh.piggyp.ink:/opt/nomad/volumes/files/ --rsync-path="sudo rsync"

echo $HASH
yq -y ".[\"resource-pack-hash\"] = \"$HASH\" | .[\"resource-pack-url\"] = \"http://files.blanktopia.com/Blanktopia-$HASH.zip\"" config.yml | sponge config.yml
