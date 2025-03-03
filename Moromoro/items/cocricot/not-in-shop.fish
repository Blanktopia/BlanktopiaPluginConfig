#!/usr/bin/env fish

find {bed,chair,nonsolid,solid,wall} -name '*.yml' -exec sh -c "basename {} | sed 's/\.yml\$//'" \; | sort -u > /tmp/all.txt
yq '.categories | to_entries | map(.value) | flatten(1) | map(.item) | .[]' ../../shops/ikea.yml | sort -u > /tmp/shop.txt

comm -23 /tmp/all.txt /tmp/shop.txt | grep -vE -e "-(both|corner|side|all|three|left|right|inner|outer)"
