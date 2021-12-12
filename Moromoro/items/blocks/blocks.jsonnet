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
    "ruby-block.json": block("Ruby Block", 1013, 13, { 
            hardness: 5,
            tools: ["stone_pickaxe", "iron_pickaxe", "golden_pickaxe", "diamond_pickaxe", "netherite_pickaxe"],
            sounds: {
                "place": {
                    sound: "block.amethyst_block.place",
                    volume: 1.0,
                    pitch: 0.5,
                },
                "break": {
                    sound: "block.amethyst_block.break",
                    volume: 1.0,
                    pitch: 0.5,
                },
                "hit": {
                    sound: "block.amethyst_block.hit",
                    volume: 0.25,
                    pitch: 0.5,
                },
            },
        }),
    "ruby-ore.json": block("Ruby Ore", 1014, 14, {
            hardness: 3,
            tools: ["diamond_pickaxe", "netherite_pickaxe"],
            drops: ["ruby"],
            "can-fortune": true,
            sounds: {
                "place": {
                    sound: "block.stone.place",
                    volume: 1.0,
                    pitch: 0.8,
                },
                "break": {
                    sound: "block.stone.break",
                    volume: 1.0,
                    pitch: 0.8,
                },
                "hit": {
                    sound: "block.stone.hit",
                    volume: 0.25,
                    pitch: 0.5,
                },
            },
        }),
    "deepslate-ruby-ore.json": block("Deepslate Ruby Ore", 1015, 15, {
            hardness: 4.5,
            tools: ["diamond_pickaxe", "netherite_pickaxe"],
            drops: ["ruby"],
            "can-fortune": true,
            sounds: {
                "place": {
                    sound: "block.deepslate.place",
                    volume: 1.0,
                    pitch: 0.8,
                },
                "break": {
                    sound: "block.deepslate.break",
                    volume: 1.0,
                    pitch: 0.8,
                },
                "hit": {
                    sound: "block.deepslate.hit",
                    volume: 0.25,
                    pitch: 0.5,
                },
            },
        }),
    "sculk-block.json": block("Sculk Block", 1017, 17, { 
            drops: [],
            experience: 1,
            sounds: {
                "place": {
                    sound: "block.chorus_flower.grow",
                    volume: 2.0,
                    pitch: 2.0,
                },
                "break": {
                    sound: "block.chorus_flower.death",
                    volume: 2.0,
                    pitch: 2.0,
                },
                "hit": {
                    sound: "block.chorus_flower.grow",
                    volume: 1.0,
                    pitch: 1.5,
                },
            },
        }),
    "sculk-trap.json": block("Sculk Catalyst", 1019, 19, {
            drops: [],
            experience: 1,
            sounds: {
                "place": {
                    sound: "block.chorus_flower.grow",
                    volume: 2.0,
                    pitch: 2.0,
                },
                "break": {
                    sound: "block.chorus_flower.death",
                    volume: 2.0,
                    pitch: 2.0,
                },
                "hit": {
                    sound: "block.chorus_flower.grow",
                    volume: 1.0,
                    pitch: 1.5,
                },
            },
        }),
    "sculk-chute.json": block("Sculk Chute", 1021, 21, {
            drops: [],
            experience: 1,
            sounds: {
                "place": {
                    sound: "block.chorus_flower.grow",
                    volume: 2.0,
                    pitch: 2.0,
                },
                "break": {
                    sound: "block.chorus_flower.death",
                    volume: 2.0,
                    pitch: 2.0,
                },
                "hit": {
                    sound: "block.chorus_flower.grow",
                    volume: 1.0,
                    pitch: 1.5,
                },
            },
        }),

}
