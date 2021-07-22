local furniture(name, customModelData, collision = false, sitHeight = null, options = {}) = {
    name: "&f" + name,
    material: "LEATHER_HORSE_ARMOR",
    'custom-model-data': customModelData,
    block: {
        type: "item",
        collision: collision,
        'sit-height': sitHeight
    },
} + options;

local wooden(key, name, customModelData, collision = false, sitHeight = null, options = {}, prefix = "") = {
    ["oak-" + key + ".json"]: furniture(prefix + "Oak " + name, customModelData + 0, collision, sitHeight, options),
    ["spruce-" + key + ".json"]: furniture("Spruce " + name, customModelData + 1, collision, sitHeight, options),
    ["birch-" + key + ".json"]: furniture("Birch " + name, customModelData + 2, collision, sitHeight, options),
    ["jungle-" + key + ".json"]: furniture("Jungle " + name, customModelData + 3, collision, sitHeight, options),
    ["acacia-" + key + ".json"]: furniture("Acacia " + name, customModelData + 4, collision, sitHeight, options),
    ["dark-oak-" + key + ".json"]: furniture("Dark Oak " + name, customModelData + 5, collision, sitHeight, options),
    ["crimson-" + key + ".json"]: furniture("Crimson " + name, customModelData + 6, collision, sitHeight, options),
    ["warped-" + key + ".json"]: furniture("Warped " + name, customModelData + 7, collision, sitHeight, options),
};

wooden("chair", "Chair", 1000, false, 0.5625) +
wooden("stool", "Stool", 1010, false, 0.6875) +
wooden("desk", "Desk", 1020, true) +
wooden("garden-table", "Garden Table", 1030, true) +
wooden("beach-chair", "Beach Chair", 1040, false, 0.4375, options = { dyeable: true }) +
wooden("round-table", "Round Table", 1050, true) +
wooden("table", "Table", 1060, true) +
wooden("painted-chair", "Chair", 1070, true, options = { dyeable: true, lore: "&7Dyeable" }, prefix = "Painted ")
