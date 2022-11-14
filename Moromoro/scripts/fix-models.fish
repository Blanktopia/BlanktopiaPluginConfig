#! /usr/bin/env fish

cd pack-src/assets/cocricotmod/models/block
mkdir -p ../../../../../pack/assets/cocricotmod/models/block
rm ../../../../../pack/assets/cocricotmod/models/block/*.json

set wall '^bathrobe.*|^wall.*|^photoframe_antique_black.json$|^photoframe_antique_white.json$|^neon.*|^(closed|open)plate.json$|^captionplate_.*_upper$'
set rotate270 '^chair_dining.*|^chair_garden.*|^chair_midcentury.*|^chair_paris.*|^chair_rocking.json'

for file in *.json
	if string match -r $wall $file > /dev/null
		echo "Wall: " $file
		jq -c '.display.fixed = { "rotation": [0, 0, 0], "translation": [0, 0, -16], "scale": [2, 2, 2] }' \
			$file > ../../../../../pack/assets/cocricotmod/models/block/$file
	else if string match -r $rotate270 $file > /dev/null
		echo "Wall: " $file
		jq -c '.display.fixed = { "rotation": [-90, 90, 0], "translation": [0, 0, -16], "scale": [2, 2, 2] }' \
			$file > ../../../../../pack/assets/cocricotmod/models/block/$file
	else
		jq -c '.display.fixed = { "rotation": [-90, 0, 0], "translation": [0, 0, -16], "scale": [2, 2, 2] }' \
			$file > ../../../../../pack/assets/cocricotmod/models/block/$file
	end
end
