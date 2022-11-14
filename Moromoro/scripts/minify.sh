#!/bin/bash

shopt -s globstar

# Minify
for i in pack/**/*.json; do
        jq -c . ${i} | sponge ${i}
done

