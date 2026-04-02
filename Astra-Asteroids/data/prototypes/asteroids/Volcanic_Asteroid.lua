local volcanic_asteroid_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])
    volcanic_asteroid_chunk.name = "volcanic_asteroid_chunk"
    volcanic_asteroid_chunk.minable =
    {mining_time = 0.2, result = "volcanic_asteroid_chunk_item"}
    volcanic_asteroid_chunk.order = "v"
    volcanic_asteroid_chunk.icon = "__Astra-Asteroids__/graphics/volcanic-asteroid-chunk.png"

local volcanic_asteroid_chunk_item = table.deepcopy(data.raw.item["metallic-asteroid-chunk"])
    volcanic_asteroid_chunk_item.name = "volcanic_asteroid_chunk_item"
    volcanic_asteroid_chunk_item.subgroup = "space-material"
    volcanic_asteroid_chunk_item.icon = "__Astra-Asteroids__/graphics/volcanic-asteroid-chunk.png"
    volcanic_asteroid_chunk_item.order = "v"

local volcanic_asteroid_chunk_crushing = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
    volcanic_asteroid_chunk_crushing.name = "volcanic_asteroid_chunk_crushing"
    volcanic_asteroid_chunk_crushing.localised_name = { "recipe-name.volcanic_asteroid_chunk_crushing" }
    volcanic_asteroid_chunk_crushing.icon = "__Astra-Asteroids__/graphics/volcanic-asteroid-chunk.png"
    volcanic_asteroid_chunk_crushing.order = "v"
    volcanic_asteroid_chunk_crushing.enabled = false
    volcanic_asteroid_chunk_crushing.ingredients = { { type = "item", name = "volcanic_asteroid_chunk_item", amount = 1 } }
    volcanic_asteroid_chunk_crushing.results =
{
    { type = "item", name = "stone", amount_min = 5, amount_max = 10 }
}

local volcanic_asteroid_chunk_crushing_adv = table.deepcopy(volcanic_asteroid_chunk_crushing)
    volcanic_asteroid_chunk_crushing.name = "volcanic_asteroid_chunk_crushing_adv"
    volcanic_asteroid_chunk_crushing.localised_name = { "recipe-name.volcanic_asteroid_chunk_crushing_adv" }
    volcanic_asteroid_chunk_crushing.icon = "__Astra-Asteroids__/graphics/nauvis-asteroid-chunk-crushing.png"
    volcanic_asteroid_chunk_crushing.order = "n"
    volcanic_asteroid_chunk_crushing.enabled = false
    volcanic_asteroid_chunk_crushing.ingredients = { { type = "item", name = "volcanic_asteroid_chunk_item", amount = 1 } }
    volcanic_asteroid_chunk_crushing.results =
    {
        { type = "item", name = "stone", amount_min = 4, amount_max = 8 },
        { type = "item", name = "uranium-ore", amount_min = 0, amount_max = 4, probability = 0.25}
    }

data:extend({volcanic_asteroid_chunk, volcanic_asteroid_chunk_item, volcanic_asteroid_chunk_crushing, volcanic_asteroid_chunk_crushing_adv})

table.insert(data.raw["technology"]["space-platform"].effects, {type = "unlock-recipe", recipe = "volcanic_asteroid_chunk_crushing"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "volcanic_asteroid_chunk_crushing_adv"})

local volcanic_crushing_recipe = {
    name = "astra-nauvis-asteroid-crushing",
    type = "recipe",
    subgroup = "space-crushing",
    category = "crushing",
    --order = "s",
    enabled = false,
    icon = "__Astra-Asteroids__/graphics/nauvis-asteroid-chunk-crushing.png",
    energy_required = 2,
    ingredients = {
        { type = "item", name = "volcanic_asteroid_chunk_item", amount = 1 }
    },
    products = {
        { type = "item", name = "stone", amount = 0, probability = 1 }
    },
}

local volcanic_chunk_item = {
    type = "item",
    name = "Sunrise_Sasparillaroid_Chunk_Item",
    subgroup = "space-material",
    order = "s",
    icon = "__Astra-Asteroids__/graphics/nauvis-asteroid-chunk.png",
    stack_size = 1
}

local volcanic_chunk = {
    type = "asteroid-chunk",
    name = "Sunrise_Sasparillaroid_Chunk",
    subgroup = "space-material",
    order = "s",
    icon = "__Astra-Asteroids__/graphics/nauvis-asteroid-chunk.png",
    minable = {
      mining_particle = "carbonic-asteroid-chunk-particle-medium",
      mining_time = 0.2,
      result = "Sunrise_Sasparillaroid_Chunk_Item"
    }
}




data:extend({volcanic_chunk_item, volcanic_chunk})