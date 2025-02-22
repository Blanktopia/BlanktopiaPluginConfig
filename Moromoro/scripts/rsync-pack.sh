#!/usr/bin/env bash

hash=$(sha1sum pack.zip | cut -d' ' -f1)
rsync pack.zip weiwen@blanktopia.com:~/Docker/caddy/files/Blanktopia-$hash.zip
yq ".[\"resource-pack-url\"] = \"https://files.blanktopia.com/Blanktopia-$hash.zip\"" -iY config.yml
yq ".[\"resource-pack-hash\"] = \"$hash\"" -iY config.yml
