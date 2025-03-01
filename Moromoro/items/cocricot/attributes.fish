#!/usr/bin/env fish

set dependencies

echo "Adding seats to chairs"
for file in chair/**/*.yml
	yq -y '.block["sit-height"] = 0.4375' $file | sponge $file
end

echo "Adding seat rotate to stools"
for file in chair/rotate/*.yml
	yq -y '.block["sit-rotate"] = true' $file | sponge $file
end

echo "Adding collision to solid blocks"
for file in solid/*.yml
	yq -y '.block.collision = true' $file | sponge $file
end
for file in bed/bed-{frame,mattress}*.yml
	yq -y '.block.collision = true' $file | sponge $file
end

echo "Marking wall items as wall"
yq -Y -i '.block.pitch = -90' wall/*.yml

echo "Rotating chairs"
find chair/ -regextype sed -regex 'chair/chair-\(dining\|garden\|midcentury\|paris\|rocking\).*' -exec yq -Y -i '.block.yaw = 270' {} \;
