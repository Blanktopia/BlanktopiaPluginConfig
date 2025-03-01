#!/usr/bin/env fish

set dependencies

echo "Adding seats to chairs"
yq -Y -i '.block["sit-height"] = 0.4375' chair/**/*.yml

echo "Adding seat rotate to stools"
yq -Y -i '.block["sit-rotate"] = true' chair/rotate/*.yml

echo "Adding collision to solid blocks"
yq -Y -i '.block.collision = true' solid/*.yml
yq -Y -i '.block.collision = true' bed/bed-{frame,mattress}*.yml

echo "Marking wall items as wall"
yq -Y -i '.block.pitch = -90' wall/*.yml

echo "Rotating chairs"
find chair/ -regextype sed -regex 'chair/chair-\(dining\|garden\|midcentury\|paris\|rocking\).*' -exec yq -Y -i '.block.yaw = 270' {} \;

echo "Bathtubs"
for color in {black, white}
	yq -Y -i ".block.triggers = {\"block-use\":[{type:\"play-sound\",sound:\"block.water.ambient\",volume:2},{type:\"toggle-custom-block\",key:\"bathtub-clawfoot-$color-water\"}]}" chair/bathtub-clawfoot-$color.yml
	yq -Y -i ".block.triggers = {\"block-use\":[{type:\"play-sound\",sound:\"block.water.ambient\",volume:2},{type:\"toggle-custom-block\",key:\"bathtub-clawfoot-$color-rose\"}]}" chair/bathtub-clawfoot-$color-water.yml
	yq -Y -i ".block.triggers = {\"block-use\":[{type:\"play-sound\",sound:\"block.water.ambient\",volume:2},{type:\"toggle-custom-block\",key:\"bathtub-clawfoot-$color\"}]}" chair/bathtub-clawfoot-$color-rose.yml
end

echo "Sinks, showers, toilet"
yq -Y -i ".block.triggers = {\"block-use\":[{type:\"play-sound\",sound:\"item.bucket.empty\"}]}" nonsolid/toilet*.yml
yq -Y -i ".block.triggers = {\"block-use\":[{type:\"play-sound\",sound:\"block.water.ambient\",volume:2}]}" solid/sink*.yml
yq -Y -i ".block.triggers = {\"block-use\":[{type:\"play-sound\",sound:\"entity.generic.splash\"}]}" chair/toilet{-black,-brown,-modern,}.yml
