#!/usr/bin/env fish

set models block/block
set textures block/block

set files {_base,chair,multi,nonsolid,solid,wall}/**/*.yml

for file in $files
	set model (yq -r '.model' $file | sed 's/cocricotmod:block\///')
	set json "../../pack/assets/cocricotmod/models/block/"$model".json"
	set parent (jq -r '.parent' $json | sed 's/cocricotmod:block\///')
	set texture (jq -r '.textures | .[]?' $json | sed 's/cocricotmod:blocks\///')

	if not contains $textures $texture
		set -a textures $texture
	end
	if not contains $model $models
		set -a models $model
	end
	if not contains $parent $models
		set -a models $parent
	end
end

echo Models:
echo $models > models.txt
echo 
echo Texture
echo $textures > textures.txt

if test "$argv[1]" = "rm"
	echo "Pruning..."
	cd ../../pack/assets/cocricotmod/models/block
	for file in *.json
		set model (echo $file | sed 's/\.json//')
		if not contains $model $models
			rm $model".json"
		end
	end

	cd ../../textures/blocks
	for file in *.png
		set texture (echo $file | sed 's/\.png//')
		if not contains $texture $textures
			rm $texture".png"
		end
	end
end
