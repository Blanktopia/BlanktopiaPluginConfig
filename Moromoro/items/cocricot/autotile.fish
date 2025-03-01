#!/usr/bin/env fish

for base in {coffeetable-glass-black,coffeetable-glass-white,coffeetable-iron-brown,coffeetable-iron-dark,coffeetable-iron-natural,coffeetable-iron-seadrift,coffeetable-midcentury-brown,coffeetable-midcentury-dark,desk-antique,desk-simple-black,desk-simple-brown,desk-simple-white}
	yq -Y -i ".name |= sub(\" Single\";\"\")" solid/$base-single.yml
	yq -Y -i ".block[\"auto-tile\"] = {type:\"single-left-both-right\",keys:[\"$base-single\",\"$base-left\",\"$base-both\",\"$base-right\"]}" solid/$base*.yml
end

for base in {bench-turnedleg-black,bench-turnedleg-shabby,bench-turnedleg-white,bench-turnedleg-white-dark,gardenbench-black,gardenbench-brown,gardenbench-clear,gardenbench-dark,gardenbench-green,gardenbench-lightblue,gardenbench-marineblue,gardenbench-mintgreen,gardenbench-natural,gardenbench-pink,gardenbench-red,gardenbench-seadrift,gardenbench-white,gardenbench-yellow,parkbench-black,parkbench-dark,parkbench-light,parkbench-white,sofa-log-birch-natural,sofa-log-birch-rustic,sofa-log,sofa-log-natural,sofa-midcentury-black,sofa-midcentury-blue,sofa-midcentury-brown,sofa-midcentury-darkbrown,sofa-midcentury-gray,sofa-midcentury-green,sofa-midcentury-lightbrown,sofa-midcentury-lightorange,sofa-resort,sofa-simple-black,sofa-simple-blue,sofa-simple-gray,sofa-simple-green,sofa-simple-lightbrown,sofa-simple-lime,sofa-simple-red,sofa-simple-white,sofa-simple-yellow,sofa-vintage-black,sofa-vintage-brown}
	yq -Y -i ".name |= sub(\" Single\";\"\")" chair/$base-single.yml
	yq -Y -i ".block[\"auto-tile\"] = {type:\"single-left-both-right\",keys:[\"$base-single\",\"$base-left\",\"$base-both\",\"$base-right\"]}" chair/$base*.yml
end

for base in {bench-turnedleg-black,bench-turnedleg-shabby,bench-turnedleg-white,bench-turnedleg-white-dark}
	yq -Y -i ".block.yaw = 180" chair/$base-{left,right}.yml
end
yq -Y -i ".block.yaw = 180" solid/coffeetable-modern-whitegold-side.yml

for base in {coffeetable-modern-whitegold,table-ironleg-black,table-ironleg-brown,table-ironleg-clear,table-ironleg-dark,table-ironleg-natural,table-ironleg-seadrift,table-ironleg-white,table-stainless}
	yq -Y -i ".block[\"auto-tile\"] = {type:\"single-side-both-corner-three-all\",keys:[\"$base\",\"$base-side\",\"$base-both\",\"$base-corner\",\"$base-three\",\"$base-all\"]}" solid/$base*.yml
end

for base in {rug-jute-round,rug-shag-round-black,rug-shag-round-bluegreen,rug-shag-round-darkblue,rug-shag-round-gray,rug-shag-round-green,rug-shag-round-lightblue,rug-shag-round-lightbrown,rug-shag-round-lightgreen,rug-shag-round-lime,rug-shag-round-pink,rug-shag-round-purple,rug-shag-round-red,rug-shag-round-white,rug-shag-round-yellow}
	yq -Y -i ".block[\"auto-tile\"] = {type:\"single-side-both-corner-three-all\",keys:[\"$base-single\",\"$base-side\",\"$base-both\",\"$base-corner\",\"$base-three\",\"$base-all\"]}" nonsolid/$base*.yml
end

for base in {sofa-slipper-american-black,sofa-slipper-american-brown,sofa-slipper-american-darkbrown,sofa-slipper-american-green,sofa-slipper-american-lightorange,sofa-slipper-american-mintgreen,sofa-slipper-american-pink,sofa-slipper-american-red,sofa-slipper-american-white,sofa-slipper-american-yellow,sofa-slipper-black,sofa-slipper-blue,sofa-slipper-brown,sofa-slipper-darkblue,sofa-slipper-darkbrown,sofa-slipper-darkred,sofa-slipper-gray,sofa-slipper-green,sofa-slipper-lightblue,sofa-slipper-lightbrown,sofa-slipper-lightorange,sofa-slipper-lightpurple,sofa-slipper-mintgreen,sofa-slipper-pink,sofa-slipper-purple,sofa-slipper-red,sofa-slipper-white,sofa-slipper-yellow}
	yq -Y -i ".block.yaw = 90 | .block[\"auto-tile\"] = {type:\"single-inner-outer\",keys:[\"$base\",\"$base-inner\",\"$base-outer\"]}" chair/$base*.yml
end
