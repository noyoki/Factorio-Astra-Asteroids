local nauvis_asteroid_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])
nauvis_asteroid_chunk.name = "nauvis_asteroid_chunk"
nauvis_asteroid_chunk.minable =
{mining_time = 0.2, result = "nauvis_asteroid_chunk_item"}
nauvis_asteroid_chunk.order = "n"
nauvis_asteroid_chunk.icon = "__Astra-Asteroids__/graphics/nauvis-asteroid-chunk.png"

local nauvis_asteroid_chunk_item = table.deepcopy(data.raw.item["metallic-asteroid-chunk"])
nauvis_asteroid_chunk_item.name = "nauvis_asteroid_chunk_item"
nauvis_asteroid_chunk_item.icon = "__Astra-Asteroids__/graphics/nauvis-asteroid-chunk.png"
nauvis_asteroid_chunk_item.order = "f"

local nauvis_asteroid_chunk_crushing = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
nauvis_asteroid_chunk_crushing.name = "nauvis_asteroid_chunk_crushing"
nauvis_asteroid_chunk_crushing.localised_name = { "recipe-name.nauvis_asteroid_chunk_crushing" }
nauvis_asteroid_chunk_crushing.icon = "__Astra-Asteroids__/graphics/nauvis-asteroid-chunk-crushing.png"
nauvis_asteroid_chunk_crushing.order = "n"
nauvis_asteroid_chunk_crushing.enabled = false
nauvis_asteroid_chunk_crushing.ingredients = { { type = "item", name = "nauvis_asteroid_chunk_item", amount = 1 } }
nauvis_asteroid_chunk_crushing.results =
{
    { type = "item", name = "stone", amount_min = 5, amount_max = 10 }
}

local nauvis_asteroid_chunk_crushing_adv = table.deepcopy(nauvis_asteroid_chunk_crushing)
nauvis_asteroid_chunk_crushing.name = "nauvis_asteroid_chunk_crushing_adv"
nauvis_asteroid_chunk_crushing.localised_name = { "recipe-name.nauvis_asteroid_chunk_crushing_adv" }
nauvis_asteroid_chunk_crushing.icon = "__Astra-Asteroids__/graphics/nauvis-asteroid-chunk-crushing.png"
nauvis_asteroid_chunk_crushing.order = "n"
nauvis_asteroid_chunk_crushing.enabled = false
nauvis_asteroid_chunk_crushing.ingredients = { { type = "item", name = "nauvis_asteroid_chunk_item", amount = 1 } }
nauvis_asteroid_chunk_crushing.results =
{
    { type = "item", name = "stone", amount_min = 4, amount_max = 8 },
    { type = "item", name = "uranium-ore", amount_min = 0, amount_max = 4, probability = 0.25}
}

data:extend({nauvis_asteroid_chunk, nauvis_asteroid_chunk_item, nauvis_asteroid_chunk_crushing, nauvis_asteroid_chunk_crushing_adv})

table.insert(data.raw["technology"]["space-platform"].effects, {type = "unlock-recipe", recipe = "nauvis_asteroid_chunk_crushing"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "nauvis_asteroid_chunk_crushing_adv"})

local nauvis_chunk_item = {
    type = "item",
    name = "Sunrise_Sasparillaroid_Chunk_Item",
    subgroup = "space-material",
    order = "s",
    icon = "__Astra-Asteroids__/graphics/nauvis-asteroid-chunk.png",
    stack_size = 1
}

local nauvis_chunk = {
    type = "asteroid-chunk",
    name = "Sunrise_Sasparillaroid_Chunk",
    subgroup = "space-material",
    order = "s",
    icon = "__Astra-Asteroids__/graphics/nauvis-asteroid-chunk.png",
    mineable = {
        mining_time = 0.2,
        mineable = true,
        results = { {name = "Sunrise_Sasparillaroid_Chunk_Item", amount = 1} }
    }
}




data:extend({nauvis_chunk_item, nauvis_chunk})