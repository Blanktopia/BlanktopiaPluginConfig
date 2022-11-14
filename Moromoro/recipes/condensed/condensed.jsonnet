local condensed(result, ingredient) = {
    [result + ".json"]: {
        type: 'shapeless',
        result: result,
        ingredients: [ingredient, ingredient, ingredient, ingredient, ingredient, ingredient, ingredient, ingredient, ingredient],
    }, 
    [result + "-reverse.json"]: {
        type: 'shapeless',
        result: ingredient + ":9",
        ingredients: [result],
    }
};

condensed("apple-crate", "APPLE") +
condensed("bamboo-block", "BAMBOO") +
condensed("beetroot-crate", "BEETROOT") +
condensed("berries-sack", "SWEET_BERRIES") +
condensed("cactus-block", "CACTUS") +
condensed("carrot-crate", "CARROT") +
condensed("cocoa-beans-sack", "COCOA_BEANS") +
condensed("golden-apple-crate", "GOLDEN_APPLE") +
condensed("gunpowder-sack", "GUNPOWDER") +
condensed("nether-wart-sack", "NETHER_WART") +
condensed("potato-crate", "POTATO") +
condensed("stick-block", "STICK") +
condensed("ruby-block", "ruby")
