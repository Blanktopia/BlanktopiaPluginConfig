local effect(effect, duration, level) = {
    type: 'add-potion-effect',
    effect: effect,
    duration: duration,
    level: level
};

local feed(amount, saturation) = {
    type: 'feed',
    amount: amount,
    saturation: saturation,
};

local food(name, material, customModelData, actions) = {
    name: "&f" + name,
    material: material,
    'custom-model-data': customModelData,

    triggers: {
        consume: actions,
    },
};

{

    'apple-pie.json': food("Apple Pie", "PUMPKIN_PIE", 1, [
        effect("damage_resistance", 1200, 1),
        feed(3, 5.6),
    ]),

    'apple-cider.json': food("Apple Cider", "POTION", 1, [
        effect("increase_damage", 6000, 2),
        effect("slow", 6000, 0),
        feed(2, 1),
    ]),

    'cheese.json': food("Cheese", "COOKIE", 4, [
        effect("damage_resistance", 1200, 1),
        feed(3, 5.6),
    ]),

    'chicken-noodle-soup.json': food("Chicken Noodle Soup", "MUSHROOM_STEW", 3, [
        effect("damage_resistance", 1200, 1),
        feed(3, 5.6),
    ]),

    'cotton-candy-pink.json': food("Cotton Candy", "COOKIE", 1, [
        effect("speed", 1200, 1),
        feed(3, 5.6),
    ]),

    'cotton-candy-blue.json': food("Cotton Candy", "COOKIE", 2, [
        effect("speed", 1200, 1),
        feed(3, 5.6),
    ]),

    'mac-and-cheese.json': food("Mac and Cheese", "MUSHROOM_STEW", 4, [
        effect("damage_resistance", 1200, 1),
        feed(3, 5.6),
    ]),

    'noodles.json': food("Noodles", "COOKIE", 6, [
        effect("damage_resistance", 1200, 1),
        feed(3, 5.6),
    ]),

    'oreo.json': food("Oreos", "COOKIE", 7, [
        effect("speed", 1200, 1),
        feed(8, 5.6),
    ]),

    'pasta.json': food("Pasta", "MUSHROOM_STEW", 1, [
        effect("damage_resistance", 1200, 1),
        feed(3, 5.6),
    ]),

    'squid-ink-pasta.json': food("Squid Ink Pasta", "MUSHROOM_STEW", 2, [
        effect("damage_resistance", 1200, 1),
        feed(3, 5.6),
    ]),

    'sunny-side-up.json': food("Sunny Side Up", "COOKIE", 3, [
        effect("damage_resistance", 1200, 1),
        feed(3, 5.6),
    ]),

    'vinegar.json': food("Vinegar", "POTION", 2, [
        effect("poison", 200, 2),
    ]),

    // Fruits

    'banana.json': food("Banana", "APPLE", 1, []),
    'cherry.json': food("Cherry", "APPLE", 2, []),
    'green-apple.json': food("Green Apple", "APPLE", 3, []),
    'kiwi.json': food("Kiwi", "APPLE", 4, []),
    'lemon.json': food("Lemon", "APPLE", 5, []),
    'mango.json': food("Mango", "APPLE", 6, []),
    'orange.json': food("Orange", "APPLE", 7, []),
    'peach.json': food("Peach", "APPLE", 8, []),
    'pear.json': food("Pear", "APPLE", 9, []),
}