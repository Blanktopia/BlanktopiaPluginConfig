local crateCoupon(name, crate) = {
  name: '<gold>' + name + ' Crate Coupon',
  item: 'paper',
  'custom-model-data': 4,
  model: 'blanktopia:misc/key_coupon',

  lore: [
    '<dark_grey>-------------------------',
    '',
    '<aqua>Right-click<white> to give all online',
    '<white>players a [' + name + ' Crate Key](gold).',
    '',
    '<dark_grey>-------------------------',
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
        command: 'broadcast <gold>%p<gold> has given everyone a ' + name + ' Crate Key.',
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
