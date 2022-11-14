#!/usr/bin/env fish

pushd chair/
set rotate270 '^chair-dining.*|^chair-garden.*|^chair-midcentury.*|^chair-paris.*|^chair-rocking.*'
echo "Changing rotated models"
for file in *.yml
	if string match -r $rotate270 $file > /dev/null
		echo $file
		set modelsrc "../../../pack-full/assets/"(yq -r '.model' $file | sed 's/:/\/models\//')".json"
		set model "../../../pack/assets/"(yq -r '.model' $file | sed 's/:/\/models\//')".json"
		jq -c '.display.fixed = { "rotation": [-90, 90, 0], "translation": [0, 0, -16], "scale": [2, 2, 2] }' \
			$modelsrc > $model
	end
end
popd

