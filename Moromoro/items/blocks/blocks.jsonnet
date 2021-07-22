local block(name, customModelData, state, blockOptions = {}) = {
    "block": {
        "type": "mushroom",
        "state": state
    } + blockOptions,
    "custom-model-data": customModelData,
    "material": "PAPER",
    "name": "&f" + name
};

{
    "apple-crate.json": block("Apple Crate", 1001, 1),
    "bamboo-block.json": block("Bamboo Block", 1002, 2),
    "beetroot-crate.json": block("Beetroot Crate", 1003, 3),
    "berries-sack.json": block("Berries Sack", 1004, 4),
    "cactus-block.json": block("Cactus Block", 1005, 5),
    "carrot-crate.json": block("Carrot Crate", 1006, 6),
    "cocoa-beans-sack.json": block("Cocoa Beans Sack", 1007, 7),
    "golden-apple-crate.json": block("Golden Apple Crate", 1008, 8),
    "gunpowder-sack.json": block("Gunpowder Sack", 1009, 9),
    "nether-wart-sack.json": block("Nether Wart Sack", 1010, 10),
    "potato-crate.json": block("Potato Crate", 1011, 11),
    "stick-block.json": block("Stick Block", 1012, 12),
    "ruby-block.json": block("Ruby Block", 1013, 13),
    "ruby-ore.json": block("Ruby Ore", 1014, 14, { drops: "ruby", "can-fortune": true }),
    "deepslate-ruby-ore.json": block("Deepslate Ruby Ore", 1015, 15, { drops: "ruby", "can-fortune": true }),
    "sculk-block.json": block("Sculk Block", 1015, 17),
    "sculk-trap.json": block("Sculk Trap", 1015, 19),
    "sculk-chute.json": block("Sculk Chute", 1015, 21),
}
