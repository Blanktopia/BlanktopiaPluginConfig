#! /usr/bin/env fish

cd pack/assets/cocricotmod/models/block
rm ../../../../../items/cocricot/*.yml
mkdir -p ../../../../../items/cocricot

set customModelData 2000

set ymlignore \
	vase \
	base_cross_double \
	base_cross_odd \
	coffeetable_glass_both \
	coffeetable_glass_left \
	coffeetable_glass_right \
	coffeetable_glass_single \
	coffeetable_iron_both \
	coffeetable_iron_left \
	coffeetable_iron_right \
	coffeetable_iron_single \
	coffeetable_midcentury_both \
	coffeetable_midcentury_left \
	coffeetable_midcentury_right \
	coffeetable_midcentury_single \
	bathrobe \
	bathtub_clawfoot \
	wallshelf \
	wall_ornament

for file in *.json
	set name (path change-extension '' $file | sed -e 's/_/ /g' -e 's/[^ _-]*/\u&/g' -e 's/\([[:digit:]]\)\+/ \1/g')
	set path ../../../../../items/cocricot/(path change-extension 'yml' (echo $file | sed 's/_/-/g'))

	echo "\
name: $name
material: PAPER
custom-model-data: $customModelData
model: 'cocricotmod:block/$(path change-extension '' $file)'

block:
  type: item" > $path

	if string match -r "Chair|Stool" "$name" > /dev/null
		echo "\
  sit-height: 0.4375" >> $path
	end
 
	set customModelData (math $customModelData + 1)
end
