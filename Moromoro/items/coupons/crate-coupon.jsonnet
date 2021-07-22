local crateCoupon(name, crate) = {
  name: '&6' + name + ' Crate Coupon',
  material: 'PAPER',
  'custom-model-data': 4,

  lore: '&8-------------------------

&bRight-click&f to give all online
&fplayers a [' + name + ' Crate Key](gold).

&8-------------------------',

  enchantments: {
    final: 1,
  },

  triggers: {
    'right-click': [
      {
        type: 'console-command',
        command: 'crates givekey * ' + std.asciiLower(crate),
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
        command: 'broadcast &6%p&6 has given everyone a ' + crate + ' Crate Key.',
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
}
