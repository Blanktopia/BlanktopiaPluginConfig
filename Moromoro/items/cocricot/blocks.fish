#!/usr/bin/env fish

set dependencies

set files *.yml

for file in $files
	set model "../../pack/assets/"(yq -r '.model' $file | sed 's/:/\/models\//')".json"

	# Dependency Graph
	set parent (jq -r '.parent' $model)
	set parentyml (echo $parent | sed -e 's/^cocricotmod:block\///' -e 's/-/_/g')

	if test -e "block/"$parentyml".yml"; or string match -qr "block/(cube_all|half_slab|upper_slab|stairs|inner_stairs|outer_stairs)|cocricotmod:block/base_(arch|cube|hourglass|nothickness|pane|plate|pyramid|rod|slab|stairs|stick|vslab|roof)" $parent; and not jq -e 'has("elements")' $model > /dev/null
		echo "block: "$file
		mv "$file" "block/$file"
		set -a blocks $model
		continue
	end

	if not contains $parent $dependencies
		set -a parents $parent
	end
end

echo $parents
