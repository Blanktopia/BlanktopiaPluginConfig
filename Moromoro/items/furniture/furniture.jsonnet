local furniture(name, model, customModelData, collision = false, sitHeight = null, sitRotate = null, options = {}) = {
    name: "<white>" + name,
    item: "leather_horse_armor",
    'custom-model-data': customModelData,
    model: "blanktopia:furniture/" + model,
    block: {
        type: "item",
        collision: collision,
        'sit-height': sitHeight,
        'sit-rotate': sitRotate,
    },
} + options;

local wooden(key, name, model, customModelData, collision = false, sitHeight = null, sitRotate = false, options = {}, prefix = "") = {
    ["oak-" + key + ".json"]: furniture(prefix + "Oak " + name, "oak_" + model, customModelData + 0, collision, sitHeight, sitRotate, options),
    ["spruce-" + key + ".json"]: furniture("Spruce " + name, "spruce_" + model, customModelData + 1, collision, sitHeight, sitRotate, options),
    ["birch-" + key + ".json"]: furniture("Birch " + name, "birch_" + model, customModelData + 2, collision, sitHeight, sitRotate, options),
    ["jungle-" + key + ".json"]: furniture("Jungle " + name, "jungle_" + model, customModelData + 3, collision, sitHeight, sitRotate, options),
    ["acacia-" + key + ".json"]: furniture("Acacia " + name, "acacia_" + model, customModelData + 4, collision, sitHeight, sitRotate, options),
    ["dark-oak-" + key + ".json"]: furniture("Dark Oak " + name, "dark_oak_" + model, customModelData + 5, collision, sitHeight, sitRotate, options),
    ["crimson-" + key + ".json"]: furniture("Crimson " + name, "crimson_" + model, customModelData + 6, collision, sitHeight, sitRotate, options),
    ["warped-" + key + ".json"]: furniture("Warped " + name, "warped_" + model, customModelData + 7, collision, sitHeight, sitRotate, options),
    ["mangrove-" + key + ".json"]: furniture("Mangrove " + name, "mangrove_" + model, customModelData + 8, collision, sitHeight, sitRotate, options),
};

wooden("chair", "Chair", "chair", 1000, false, 0.5625) +
wooden("stool", "Stool", "stool", 1010, false, 0.6875, true) +
wooden("desk", "Desk", "desk", 1020, true) +
wooden("garden-table", "Garden Table", "garden_table", 1030, true) +
wooden("beach-chair", "Beach Chair", "beach_chair", 1040, false, 0.4375, options = { dyeable: true }) +
wooden("round-table", "Round Table", "round_table", 1050, true) +
wooden("table", "Table", "table", 1060, true) +
wooden("painted-chair", "Chair", "chair", 1070, true, options = { dyeable: true, lore: ["<grey>Dyeable"] }, prefix = "Painted ")
