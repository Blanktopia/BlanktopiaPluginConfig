local colourCode(hex) = '&x' + std.join('', std.map(function(c) '&' + c, std.stringChars(hex)));

local biomeWand(biome, colour) = {
  name: colourCode(colour) + biome + ' Biome Wand',
  material: 'WOODEN_HOE',
  'custom-model-data': 1,
  alias: 'biome-wand',
  
  lore: '&8-------------------------

&bRight-click&f to turn an area
&finto a ' + colourCode(colour) + biome + '&f biome.

&8-------------------------
&6NATURE Crate Item',

  unbreakable: true,

  enchantments: {
    "blanktopia:soulbound": 1,
    "blanktopia:final": 1,
  },

  triggers: {
    'right-click': [
      {
        type: 'cancel'
      },
    ]
  },
};

{
    'plains-biome-wand.json': biomeWand('Plains', '8DB360'),
    'forest-biome-wand.json': biomeWand('Forest', '056621'),
    'swamp-biome-wand.json': biomeWand('Swamp', '07F9B2'),
    'jungle-biome-wand.json': biomeWand('Jungle', '537B09'),
    'snowy-tundra-biome-wand.json': biomeWand('Snowy Tundra', 'FFFFFF'),
    'snowy-taiga-biome-wand.json': biomeWand('Snowy Taiga', '31554A'),
    'taiga-biome-wand.json': biomeWand('Taiga', '0B6659'),
    'desert-biome-wand.json': biomeWand('Desert', 'FA9418'),
    'savanna-biome-wand.json': biomeWand('Savanna', 'BDB25F'),
    'badlands-biome-wand.json': biomeWand('Badlands', 'D94515'),
    'warm-ocean-biome-wand.json': biomeWand('Warm Ocean', '0000AC'),
    'lukewarm-ocean-biome-wand.json': biomeWand('Lukewarm Ocean', '000090'),
    'cold-ocean-biome-wand.json': biomeWand('Cold Ocean', '202070'),
    'river-biome-wand.json': biomeWand('River', '0000FF'),
    'mushroom-fields-biome-wand.json': biomeWand('Mushroom Fields', 'FF00FF'),
    'basalt-deltas-wand.json': biomeWand('Basalt Deltas', '403636'),
}
