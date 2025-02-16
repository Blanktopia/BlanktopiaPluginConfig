local crateCoupon(name, crate) = {
  name: '&6' + name + ' Crate Coupon',
  material: 'PAPER',
  'custom-model-data': 4,
  model: 'blanktopia:misc/key_coupon',

  lore: [
    '&8-------------------------',
    '',
    '&bRight-click&f to give all online',
    '&fplayers a [' + name + ' Crate Key](gold).',
    '',
    '&8-------------------------',
  ],

  enchantments: {
    "blanktopia:final": 1,
  },

  triggers: {
    'right-click': [
      {
        type: 'console-command',
        command: 'excellentcrates:crates key give * ' + std.asciiLower(crate) + ' 1',
      },
      {
        type: 'all-players',
        actions: [
          {
            type: 'play-sound',
            sound: 'entity.experience_orb.pickup',
          },
          {
            type: 'play-sound',
            sound: 'block.enchantment_table.use',
          },
        ],
      },
      {
        type: 'console-command',
        command: 'broadcast &6%p&6 has given everyone a ' + name + ' Crate Key.',
      },
      {
        type: 'remove-item'
      },
    ],
  },
};

{
    'builders-crate-coupon-server.json': crateCoupon("BUILDER's", "builder"),
    'miners-crate-coupon-server.json': crateCoupon("MINER's", "miner"),
    'infinity-crate-coupon-server.json': crateCoupon('INFINITY', "infinity"),
    'nature-crate-coupon-server.json': crateCoupon('NATURE', "nature"),
    'explorers-crate-coupon-server.json': crateCoupon("EXPLORER's", "explorer"),
}
