#!/usr/bin/env bash

hash=$(sha1sum pack.zip | cut -d' ' -f1)
rsync pack.zip weiwen@blanktopia.com:~/Docker/caddy/files/Blanktopia-$hash.zip
yq -y -i ".[\"resource-pack-url\"] = \"https://files.blanktopia.com/Blanktopia-$hash.zip\"" config.yml
yq -y -i ".[\"resource-pack-hash\"] = \"$hash\"" config.yml
