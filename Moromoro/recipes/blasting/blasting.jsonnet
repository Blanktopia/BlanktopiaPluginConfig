local COLORS = ['black', 'red', 'green', 'brown', 'blue', 'purple', 'cyan', 'light_gray', 'gray', 'pink', 'lime', 'yellow', 'light_blue', 'magenta', 'orange', 'white'];

local blasting(result, input, experience = 0.1, cookingTime = 100) = {
    type: 'blasting',
    result: result,
    input: input,
    experience: experience,
    'cooking-time': cookingTime,
};

local flatten(arr) = std.foldl(function(acc, x) acc + x, arr, {});

flatten(
    std.map(
        function(c) {
            ['blasting-' + std.asciiLower(c) + '-terracotta.json']:
                blasting(c + '_glazed_terracotta', c + '_terracotta') 
        }, COLORS
    )
)
 + {
    'blasting-cobblestone.json': blasting('stone', 'cobblestone'),
    'blasting-sandstone.json': blasting('smooth_sandstone', 'sandstone'),
    'blasting-red-sandstone.json': blasting('smooth_red_sandstone', 'sandstone'),
    'blasting-stone.json': blasting('smooth_stone', 'stone'),
    'blasting-quartz-block.json': blasting('smooth_quartz', 'quartz_block'),
    'blasting-clay.json': blasting('brick', 'clay_ball'),
    'blasting-netherrack.json': blasting('nether_brick', 'netherrack'),
    'blasting-nether-bricks.json': blasting('cracked_nether_bricks', 'nether_bricks'),
    'blasting-clay-block.json': blasting('terracotta', 'clay', 0.35),
    'blasting-stone-bricks.json': blasting('cracked_stone_bricks', 'stone_bricks'),
    'blasting-glass.json': blasting('glass', 'sand'),
 }
