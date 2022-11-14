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

local food(name, material, customModelData, model, actions) = {
    name: "&f" + name,
    material: material,
    'custom-model-data': customModelData,
    model: model,

    triggers: {
        consume: actions,
    },
};

{

    'apple-pie.json': food("Apple Pie", "PUMPKIN_PIE", 1, "blanktopia:food/apple_pie", [
        effect("damage_resistance", 1200, 1),
        feed(3, 5.6),
    ]),

    'apple-cider.json': food("Apple Cider", "POTION", 1, "blanktopia:food/apple_cider", [
        effect("increase_damage", 6000, 2),
        effect("slow", 6000, 0),
        feed(2, 1),
    ]),

    'cheese.json': food("Cheese", "COOKIE", 4, "blanktopia:food/cheese", [
        effect("damage_resistance", 1200, 1),
        feed(3, 5.6),
    ]),

    'chicken-noodle-soup.json': food("Chicken Noodle Soup", "MUSHROOM_STEW", 3, "blanktopia:food/chicken_noodle_soup", [
        effect("damage_resistance", 1200, 1),
        feed(3, 5.6),
    ]),

    'cotton-candy-pink.json': food("Cotton Candy", "COOKIE", 1, "blanktopia:food/cotton_candy_pink", [
        effect("speed", 1200, 1),
        feed(3, 5.6),
    ]),

    'cotton-candy-blue.json': food("Cotton Candy", "COOKIE", 2, "blanktopia:food/cotton_candy_blue", [
        effect("speed", 1200, 1),
        feed(3, 5.6),
    ]),

    'mac-and-cheese.json': food("Mac and Cheese", "MUSHROOM_STEW", 4, "blanktopia:food/mac_and_cheese", [
        effect("damage_resistance", 1200, 1),
        feed(3, 5.6),
    ]),

    'noodles.json': food("Noodles", "COOKIE", 6, "blanktopia:food/noodles", [
        effect("damage_resistance", 1200, 1),
        feed(3, 5.6),
    ]),

    'oreo.json': food("Oreos", "COOKIE", 7, "blanktopia:food/oreo", [
        effect("speed", 1200, 1),
        feed(8, 5.6),
    ]),

    'pasta.json': food("Pasta", "MUSHROOM_STEW", 1, "blanktopia:food/pasta", [
        effect("damage_resistance", 1200, 1),
        feed(3, 5.6),
    ]),

    'squid-ink-pasta.json': food("Squid Ink Pasta", "MUSHROOM_STEW", 2, "blanktopia:food/squid_ink_pasta", [
        effect("damage_resistance", 1200, 1),
        feed(3, 5.6),
    ]),

    'sunny-side-up.json': food("Sunny Side Up", "COOKIE", 3, "blanktopia:food/sunny_side_up", [
        effect("damage_resistance", 1200, 1),
        feed(3, 5.6),
    ]),

    'vinegar.json': food("Vinegar", "POTION", 2, "blanktopia:food/vinegar", [
        effect("poison", 200, 2),
    ]),

    'onigiri.json': food("Onigiri", "COOKIE", 8, "blanktopia:food/onigiri", [
        feed(3, 5.6),
    ]),

    // Fruits

    'banana.json': food("Banana", "APPLE", 1, "blanktopia:food/fruits/banana", []),
    'cherry.json': food("Cherry", "APPLE", 2, "blanktopia:food/fruits/cherry", []),
    'green-apple.json': food("Green Apple", "APPLE", 3, "blanktopia:food/fruits/green_apple", []),
    'kiwi.json': food("Kiwi", "APPLE", 4, "blanktopia:food/fruits/kiwi", []),
    'lemon.json': food("Lemon", "APPLE", 5, "blanktopia:food/fruits/lemon", []),
    'mango.json': food("Mango", "APPLE", 6, "blanktopia:food/fruits/mango", []),
    'orange.json': food("Orange", "APPLE", 7, "blanktopia:food/fruits/orange", []),
    'peach.json': food("Peach", "APPLE", 8, "blanktopia:food/fruits/peach", []),
    'pear.json': food("Pear", "APPLE", 9, "blanktopia:food/fruits/pear", []),

    // Mooncake
    'mooncake-egg.json': food("Mooncake with Egg", "COOKIE", 9, "blanktopia:food/mooncakes/egg", [
        effect("luck", 3600, 0),
    ]),
    'mooncake-red-bean.json': food("Red Bean Paste Mooncake", "COOKIE", 10, "blanktopia:food/mooncakes/red_bean", [
        effect("luck", 3600, 0),
    ]),
    'mooncake-lotus.json': food("Lotus Paste Mooncake", "COOKIE", 11, "blanktopia:food/mooncakes/lotus", [
        effect("luck", 3600, 0),
    ]),
    'mooncake-green-tea.json': food("Green Tea Mooncake", "COOKIE", 12, "blanktopia:food/mooncakes/green_tea", [
        effect("luck", 3600, 0),
    ]),
}
