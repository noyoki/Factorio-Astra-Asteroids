

local carbonic_asteroid_stone_crushing = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
carbonic_asteroid_stone_crushing.name = "astra-carbonic-asteroid-stone-crushing"
carbonic_asteroid_stone_crushing.localised_name = { "recipe-name.astra-carbonic-asteroid-stone-crushing" }
carbonic_asteroid_stone_crushing.icon = "__Astra-Asteroids__/graphics/crude-asteroid-chunk-crushing.png"
carbonic_asteroid_stone_crushing.order = "f"
carbonic_asteroid_stone_crushing.enabled = false
carbonic_asteroid_stone_crushing.ingredients ={
{ type = "item", name = "carbonic-asteroid-chunk", amount = 1 }}
carbonic_asteroid_stone_crushing.results ={{ type = "item", name = "stone", amount = 5, }}

local metallic_asteroid_stone_crushing = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
metallic_asteroid_stone_crushing.name = "astra-metallic-asteroid-stone-crushing"
metallic_asteroid_stone_crushing.localised_name = { "recipe-name.astra-metallic-asteroid-stone-crushing" }
metallic_asteroid_stone_crushing.icon = "__Astra-Asteroids__/graphics/crude-asteroid-chunk-crushing.png"
metallic_asteroid_stone_crushing.order = "f"
metallic_asteroid_stone_crushing.enabled = false
metallic_asteroid_stone_crushing.ingredients ={
{ type = "item", name = "metallic-asteroid-chunk", amount = 1 }}
metallic_asteroid_stone_crushing.results ={{ type = "item", name = "stone", amount = 5, }}

local oxide_asteroid_stone_crushing = table.deepcopy(data.raw.recipe["oxide-asteroid-crushing"])
oxide_asteroid_stone_crushing.name = "astra-oxide-asteroid-stone-crushing"
oxide_asteroid_stone_crushing.localised_name = { "recipe-name.astra-oxide-asteroid-stone-crushing" }
oxide_asteroid_stone_crushing.icon = "__Astra-Asteroids__/graphics/crude-asteroid-chunk-crushing.png"
oxide_asteroid_stone_crushing.order = "f"
oxide_asteroid_stone_crushing.enabled = false
oxide_asteroid_stone_crushing.ingredients ={
{ type = "item", name = "oxide-asteroid-chunk", amount = 1 }}
oxide_asteroid_stone_crushing.results ={{ type = "item", name = "stone", amount = 5, }}

data:extend({carbonic_asteroid_stone_crushing,metallic_asteroid_stone_crushing,oxide_asteroid_stone_crushing})
table.insert(data.raw["technology"]["space-platform"].effects, {type = "unlock-recipe", recipe = "astra-carbonic-asteroid-stone-crushing"})
table.insert(data.raw["technology"]["space-platform"].effects, {type = "unlock-recipe", recipe = "astra-metallic-asteroid-stone-crushing"})
table.insert(data.raw["technology"]["space-platform"].effects, {type = "unlock-recipe", recipe = "astra-oxide-asteroid-stone-crushing"})