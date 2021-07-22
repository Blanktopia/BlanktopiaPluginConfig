local shapeless(result, ingredients) = {
    type: 'shapeless',
    result: result,
    ingredients: ingredients,
};

local shaped(result, shape, ingredients) = {
    type: 'shaped',
    result: result,
    shape: shape,
    ingredients: ingredients,
};

local cooking(type, result, input, experience, cookingTime) = {
    type: type,
    result: result,
    input: input,
    experience: experience,
    'cooking-time': cookingTime,
};

local furnace(result, input, experience = 0.35, cookingTime = 200) = cooking('furnace', result, input, experience, cookingTime);
local campfire(result, input, experience = 0, cookingTime = 600) = cooking('campfire', result, input, experience, cookingTime);
local smoking(result, input, experience = 0.35, cookingTime = 100) = cooking('smoking', result, input, experience, cookingTime);

{
    'apple-cider.json': shapeless('apple-cider', ['apple', 'apple', 'apple']),
    'apple-pie.json': shapeless('apple-pie', ['apple', 'sugar', 'egg']),
    'cheese.json': shapeless('cheese', ['milk_bucket', 'vinegar']),
    'chicken-noodle-soup.json': shapeless('chicken-noodle-soup', ['noodles', 'cooked_chicken', 'bowl']),
    'cotton-candy-pink.json': shaped('cotton-candy-pink', [' SS', ' SS', 'Z  '], { 'S': 'sugar', 'Z': 'stick' }),
    'mac-and-cheese.json': shapeless('mac-and-cheese', ['noodles', 'cheese', 'bowl']),
    'noodles.json': shapeless('noodles', ['wheat', 'wheat']),
    'oreo.json': shaped('oreo', ['CCC', 'SSS', 'CCC'], { 'S': 'sugar', 'C': 'cookie' }),
    'pasta.json': shapeless('pasta', ['noodles', 'bowl']),
    'squid-ink-pasta.json': shapeless('squid-ink-pasta', ['noodles', 'ink_sac', 'bowl']),
    'vinegar.json': shapeless('vinegar', ['glass_bottle', 'wheat']),

    'sunny-side-up-campfire.json': campfire('sunny-side-up', 'egg'),
    'sunny-side-up-furnace.json': furnace('sunny-side-up', 'egg'),
    'sunny-side-up-smoking.json': smoking('sunny-side-up', 'egg'),
}