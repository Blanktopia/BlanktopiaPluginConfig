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
yq -Y -i '.block.wall = true' wall/*.yml
