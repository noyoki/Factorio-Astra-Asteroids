


local oilstone = table.deepcopy(data.raw.item["solid-fuel"])
oilstone.name = "astra-oil-stone"
oilstone.stack_size = 50
oilstone.icons = {{icon = "__base__/graphics/icons/solid-fuel.png", tint = {0,0,0,1} }}
oilstone.fuel_value =  "0J"
oilstone.fuel_category = nil
oilstone.spoil_ticks = 60*300
oilstone.subgroup = "space-material"
oilstone.fuel_acceleration_multiplier = nil
oilstone.fuel_top_speed_multiplier = nil
oilstone.fuel_emissions_multiplier = nil
oilstone.fuel_glow_color = nil

local oilstone_processing = table.deepcopy(data.raw.recipe["ice-melting"])
oilstone_processing.name = "astra-oilstone-processing"
oilstone_processing.icons = {{icon = "__base__/graphics/icons/solid-fuel.png", tint = {0,0,0,1} }}
oilstone_processing.enabled = false
oilstone_processing.ingredients ={{ type = "item", name = "astra-oil-stone", amount = 1 }}
oilstone_processing.results ={{type="fluid", name="crude-oil", amount=100}}
oilstone_processing.allow_productivty = false


if settings.startup["include-crude-asteroid"].value == true then
table.insert(data.raw["technology"]["space-platform"].effects, {type = "unlock-recipe", recipe = "astra-oilstone-processing"})
data:extend({oilstone,oilstone_processing})
end
