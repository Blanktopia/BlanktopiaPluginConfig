local COLORS = ['black', 'red', 'green', 'brown', 'blue', 'purple', 'cyan', 'light_gray', 'gray', 'pink', 'lime', 'yellow', 'light_blue', 'magenta', 'orange', 'white'];
local wools = std.join(",", std.map(function(c) std.asciiUpper(c) + "_WOOL", COLORS));

local shaped(result, shape, ingredients) = {
    type: 'shaped',
    result: result,
    shape: shape,
    ingredients: ingredients,
};

local woodenIngredients(type, shape) = std.prune(std.mapWithKey(
    function(k, v) if std.length(std.findSubstr(k, std.join("", shape))) > 0 then v else null,
    {
        "P": type + "_PLANKS",
        "L": type + "_LOG",
        "S": "STRIPPED_" + type + "_LOG",
    }));


local netherWoodIngredients(type, shape) = std.prune(std.mapWithKey(
    function(k, v) if std.length(std.findSubstr(k, std.join("", shape))) > 0 then v else null,
    {
        "P": type + "_PLANKS",
        "L": type + "_STEM",
        "S": "STRIPPED_" + type + "_STEM",
    }));

local wooden(result, shape, ingredients = {}) = {
    ["oak-" + result + ".json"]: shaped("oak-" + result, shape, woodenIngredients("OAK", shape) + ingredients),
    ["spruce-" + result + ".json"]: shaped("spruce-" + result, shape, woodenIngredients("SPRUCE", shape) + ingredients),
    ["birch-" + result + ".json"]: shaped("birch-" + result, shape, woodenIngredients("BIRCH", shape) + ingredients),
    ["jungle-" + result + ".json"]: shaped("jungle-" + result, shape, woodenIngredients("JUNGLE", shape) + ingredients),
    ["acacia-" + result + ".json"]: shaped("acacia-" + result, shape, woodenIngredients("ACACIA", shape) + ingredients),
    ["dark-oak-" + result + ".json"]: shaped("dark-oak-" + result, shape, woodenIngredients("DARK_OAK", shape) + ingredients),
    ["crimson-" + result + ".json"]: shaped("crimson-" + result, shape, netherWoodIngredients("CRIMSON", shape) + ingredients),
    ["warped-" + result + ".json"]: shaped("warped-" + result, shape, netherWoodIngredients("WARPED", shape) + ingredients),
};

wooden("chair", ["S  ", "SSS", "S S"]) +
wooden("stool", ["SSS", "S S"]) +
wooden("desk", ["SSS", " S ", "S S"]) +
wooden("garden-table", ["PPP", " S ", "S S"]) +
wooden("beach-chair", ["W  ", "SWW", "S S"], { "W": wools }) +
wooden("round-table", [" S ", "SSS", " S "]) +
wooden("table", ["SSS", "S S", "S S"])