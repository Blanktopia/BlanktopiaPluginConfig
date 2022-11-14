local block(name, customModelData, state, model, blockOptions = {}) = {
    "name": "&f" + name,
    "material": "PAPER",
    "custom-model-data": customModelData,
    "model": model,
    "block": {
        "type": "mushroom",
        "state": state,
        "model": model
    } + blockOptions
};

{
    "apple-crate.json": block("Apple Crate", 1001, 1, "blanktopia:block/apple_crate"),
    "bamboo-block.json": block("Bamboo Block", 1002, 2, "blanktopia:block/bamboo_block"),
    "beetroot-crate.json": block("Beetroot Crate", 1003, 3, "blanktopia:block/beetroot_crate"),
    "berries-sack.json": block("Berries Sack", 1004, 4, "blanktopia:block/berry_sack"),
    "cactus-block.json": block("Cactus Block", 1005, 5, "blanktopia:block/cactus_block"),
    "carrot-crate.json": block("Carrot Crate", 1006, 6, "blanktopia:block/carrot_crate"),
    "cocoa-beans-sack.json": block("Cocoa Beans Sack", 1007, 7, "blanktopia:block/cocoa_beans_sack"),
    "golden-apple-crate.json": block("Golden Apple Crate", 1008, 8, "blanktopia:block/golden_apple_crate"),
    "gunpowder-sack.json": block("Gunpowder Sack", 1009, 9, "blanktopia:block/gunpowder_sack"),
    "nether-wart-sack.json": block("Nether Wart Sack", 1010, 10, "blanktopia:block/nether_wart_sack"),
    "potato-crate.json": block("Potato Crate", 1011, 11, "blanktopia:block/potato_crate"),
    "stick-block.json": block("Stick Block", 1012, 12, "blanktopia:block/stick_block"),
}
