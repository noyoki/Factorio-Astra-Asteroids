

local crude_asteroid_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])
crude_asteroid_chunk.name = "crude_asteroid_chunk"
crude_asteroid_chunk.minable = 
{mining_time = 0.2, result = "crude_asteroid_chunk_item"}
crude_asteroid_chunk.icon = ""
crude_asteroid_chunk.order = "f"
crude_asteroid_chunk.icon = "__Astra-Asteroids__/graphics/crude-asteroid-chunk.png"

local crude_asteroid_chunk_item = table.deepcopy(data.raw.item["metallic-asteroid-chunk"])
crude_asteroid_chunk_item.name = "crude_asteroid_chunk_item"
crude_asteroid_chunk_item.icon = "__Astra-Asteroids__/graphics/crude-asteroid-chunk.png"
crude_asteroid_chunk_item.order = "f"

local crude_asteroid_chunk_crushing = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
crude_asteroid_chunk_crushing.name = "crude_asteroid_chunk_crushing"
crude_asteroid_chunk_crushing.localised_name = { "recipe-name.crude_asteroid_chunk_crushing" }
crude_asteroid_chunk_crushing.icon = "__Astra-Asteroids__/graphics/crude-asteroid-chunk-crushing.png"
crude_asteroid_chunk_crushing.order = "f"
crude_asteroid_chunk_crushing.enabled = false
crude_asteroid_chunk_crushing.ingredients ={
{ type = "item", name = "crude_asteroid_chunk_item", amount = 1 }}
crude_asteroid_chunk_crushing.results =
{
    { type = "item", name = "solid-fuel", amount_min = 5, amount_max = 15 },
    { type = "item", name = "coal", amount_min = 5, amount_max = 15  },
}


if settings.startup["include-crude-asteroid"].value == true then
data:extend({crude_asteroid_chunk, crude_asteroid_chunk_item,crude_asteroid_chunk_crushing})

table.insert(data.raw["technology"]["space-platform"].effects, {type = "unlock-recipe", recipe = "crude_asteroid_chunk_crushing"})
end
