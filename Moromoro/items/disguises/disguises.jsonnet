local disguise(name, skin, options = null) = {
  name: '&6' + name + ' Disguise&c ☻',
  material: 'PLAYER_HEAD',
  head: 'http://textures.minecraft.net/texture/' + skin,

  lore: [
    '',
    '&fDisguises you as a &b' + name + '&f.',
  ],

  soulbound: true,

  // slot: "HEAD",

  triggers: {
    'equip-head': [
      {
        type: 'disguise',
        disguise: if options != null then options else {
          type: 'mob',
          entity: std.strReplace(std.asciiUpper(name), ' ', '_'),
          baby: false,
        }
      },
    ],
    'unequip-armor': [
      {
        type: 'undisguise',
      },
    ],
    'place-block': [
      {
        type: 'cancel'
      },
    ],
  },
};

{
    'disguise-skeleton.json': disguise('Skeleton', null) + { material: 'SKELETON_SKULL' },
    'disguise-chicken.json': disguise('Chicken', '1638469a599ceef7207537603248a9ab11ff591fd378bea4735b346a7fae893'),
    'disguise-zombie.json': disguise('Zombie', null) + { material: 'ZOMBIE_HEAD' },
    'disguise-creeper.json': disguise('Creeper', null) + { material: 'CREEPER_HEAD' },
    'disguise-enderman.json': disguise('Enderman', '7a59bb0a7a32965b3d90d8eafa899d1835f424509eadd4e6b709ada50b9cf'),
    'disguise-pig.json': disguise('Pig', '621668ef7cb79dd9c22ce3d1f3f4cb6e2559893b6df4a469514e667c16aa4'),
    'disguise-baby-sheep.json': disguise('Baby Sheep', 'f9719ec9ee6f53c17b1f6f747866b3121401d35f77a39859f122d472863e48e', { type: 'mob', entity: 'SHEEP', baby: true }),
    'disguise-bee.json': disguise('Bee', 'd0299a2aae9a605b5dbd1945fc4368ccee88ae06e47dc90f953131e0d903b322'),
    'disguise-tropical-fish.json': disguise('Tropical Fish', '12510b301b088638ec5c8747e2d754418cb747a5ce7022c9c712ecbdc5f6f065'),
    'disguise-fern.json': disguise('Fern', null, { type: 'block', material: 'FERN' }) + { material: 'FERN' },
    'disguise-sheep.json': disguise('Sheep', 'f31f9ccc6b3e32ecf13b8a11ac29cd33d18c95fc73db8a66c5d657ccb8be70'),
    'disguise-axolotl.json': disguise('Axolotl', 'd704254139a0b1a926e7552482dd67679c6ae0dc8335c980dbd1c0d99634a708'),
    'disguise-baby-goat.json': disguise('Baby Goat', 'a662336d8ae092407e58f7cc80d20f20e7650357a454ce16e3307619a0110648', { type: 'mob', entity: 'GOAT', baby: true }),
}
