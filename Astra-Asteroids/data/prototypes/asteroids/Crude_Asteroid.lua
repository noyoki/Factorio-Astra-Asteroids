

local crude_asteroid_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])
crude_asteroid_chunk.name = "astra-crude-asteroid-chunk"
crude_asteroid_chunk.minable = {mining_time = 0.2, result = "astra-crude-asteroid-chunk"}
crude_asteroid_chunk.icon = ""
crude_asteroid_chunk.order = "f"
crude_asteroid_chunk.icon = "__Astra-Asteroids__/graphics/crude-asteroid-chunk.png"

local crude_asteroid_chunk_item = table.deepcopy(data.raw.item["metallic-asteroid-chunk"])
crude_asteroid_chunk_item.name = "astra-crude-asteroid-chunk"
crude_asteroid_chunk_item.icon = "__Astra-Asteroids__/graphics/crude-asteroid-chunk.png"
crude_asteroid_chunk_item.order = "f"

local crude_asteroid_chunk_crushing = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
crude_asteroid_chunk_crushing.name = "astra-crude-asteroid-chunk-crushing"
crude_asteroid_chunk_crushing.localised_name = { "recipe-name.crude_asteroid_chunk_crushing" }
crude_asteroid_chunk_crushing.icon = "__Astra-Asteroids__/graphics/crude-asteroid-chunk-crushing.png"
crude_asteroid_chunk_crushing.order = "f"
crude_asteroid_chunk_crushing.enabled = false
crude_asteroid_chunk_crushing.ingredients ={{ type = "item", name = "astra-crude-asteroid-chunk", amount = 1 }}
crude_asteroid_chunk_crushing.results =
{
    { type = "item", name = "stone", amount = 5},
    { type = "item", name = "astra-oil-stone", amount_min = 5, amount_max = 8 },
}

local advanced_crude_asteroid_chunk_crushing = table.deepcopy(data.raw.recipe["advanced-metallic-asteroid-crushing"])
advanced_crude_asteroid_chunk_crushing.name = "astra-advanced-crude-asteroid-chunk-crushing"
advanced_crude_asteroid_chunk_crushing.localised_name = { "recipe-name.advanced_crude_asteroid_chunk_crushing" }
advanced_crude_asteroid_chunk_crushing.icon = "__Astra-Asteroids__/graphics/crude-asteroid-chunk-crushing.png"
advanced_crude_asteroid_chunk_crushing.order = "f"
advanced_crude_asteroid_chunk_crushing.enabled = false
advanced_crude_asteroid_chunk_crushing.ingredients ={
{ type = "item", name = "astra-crude-asteroid-chunk", amount = 1 }}
advanced_crude_asteroid_chunk_crushing.results =
{
    { type = "item", name = "astra-oil-stone", amount = 5},
    { type = "item", name = "coal", amount = 5},
}



if settings.startup["include-crude-asteroid"].value == true then
data:extend({crude_asteroid_chunk,crude_asteroid_chunk_item,crude_asteroid_chunk_crushing,advanced_crude_asteroid_chunk_crushing})

table.insert(data.raw["technology"]["space-platform"].effects, {type = "unlock-recipe", recipe = "astra-crude-asteroid-chunk-crushing"})
table.insert(data.raw["technology"]["advanced-asteroid-processing"].effects, {type = "unlock-recipe", recipe = "astra-advanced-crude-asteroid-chunk-crushing"})

end
