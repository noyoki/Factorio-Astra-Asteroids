


local oilstone = table.deepcopy(data.raw.item["solid-fuel"])
oilstone.name = "astra-oilstone"
oilstone.stack_size = 50

oilstone.fuel_value =  "0J"
oilstone.fuel_category = nil
oilstone.spoil_ticks = 60*300
oilstone.subgroup = "raw-material"
oilstone.order = "b[chemistry]-astra[astra-oilstone]"
oilstone.fuel_acceleration_multiplier = nil
oilstone.fuel_top_speed_multiplier = nil
oilstone.fuel_emissions_multiplier = nil
oilstone.fuel_glow_color = nil

local oilstone_processing = table.deepcopy(data.raw.recipe["ice-melting"])
oilstone_processing.name = "astra-oilstone-processing"
oilstone_processing.icons = {{icon = "__base__/graphics/icons/solid-fuel.png", tint = {0,0,0,1} }}
oilstone_processing.enabled = false
oilstone_processing.ingredients ={{ type = "item", name = "astra-oilstone", amount = 1 }}
oilstone_processing.results ={{type="fluid", name="crude-oil", amount=50}}
oilstone_processing.allow_productivty = true


if settings.startup["astra-include-crude-asteroid"].value == true then
table.insert(data.raw["technology"]["space-platform"].effects, {type = "unlock-recipe", recipe = "astra-oilstone-processing"})
data:extend({oilstone,oilstone_processing})
end

local egg_search_pentapods = table.deepcopy(data.raw.recipe["plastic-bar"])
egg_search_pentapods.name = "astra-pentapod-egg-search"
egg_search_pentapods.icons = {{icon = "__space-age__/graphics/icons/pentapod-egg.png" }}
egg_search_pentapods.enabled = false
egg_search_pentapods.subgroup = "space-crushing"
egg_search_pentapods.order = "j[gleba].c[special]"
egg_search_pentapods.ingredients ={{ type = "item", name = "astra-gleba-asteroid-chunk", amount = 1 }, {type="fluid",name="water",amount=100}}
egg_search_pentapods.results ={{type="item", name="pentapod-egg", amount=1, probability=.5}}
egg_search_pentapods.allow_productivty = false


local egg_search_biter = table.deepcopy(data.raw.recipe["plastic-bar"])
egg_search_biter.name = "astra-biter-egg-search"
egg_search_biter.icons = {{icon = "__space-age__/graphics/icons/biter-egg.png"}}
egg_search_biter.enabled = false
egg_search_biter.subgroup = "space-crushing"
egg_search_biter.order = "h[nauvis].c[special]"
egg_search_biter.ingredients ={{ type = "item", name = "astra-nauvis-asteroid-chunk", amount = 1 }, {type="fluid",name="water",amount=100}}
egg_search_biter.results ={{type="item", name="biter-egg", amount=1, probability=.5}}
egg_search_biter.allow_productivty = false
data:extend({egg_search_pentapods,egg_search_biter})

table.insert(data.raw["technology"]["advanced-asteroid-processing"].effects, {type = "unlock-recipe", recipe = "astra-biter-egg-search"})
table.insert(data.raw["technology"]["advanced-asteroid-processing"].effects, {type = "unlock-recipe", recipe = "astra-pentapod-egg-search"})

local adv_aquilo_asteroid_processing = table.deepcopy(data.raw.recipe["fluoroketone"])
adv_aquilo_asteroid_processing.name = "astra-advanced-aquilo-asteroid-processing"
adv_aquilo_asteroid_processing.icons = {{icon = "__Astra-Asteroids__/graphics/crude_asteroid_chunk.png" }}
adv_aquilo_asteroid_processing.enabled = false
adv_aquilo_asteroid_processing.subgroup = "space-crushing"
adv_aquilo_asteroid_processing.order = "l[aquilo].b[adv]"
adv_aquilo_asteroid_processing.ingredients ={{ type = "item", name = "astra-aquilo-asteroid-chunk", amount = 1 }}
adv_aquilo_asteroid_processing.allow_productivty = true
adv_aquilo_asteroid_processing.results ={
    {type="item", name="lithium", amount=3, probability=1},
    {type="item", name="ice", amount=5, probability=1},
    {type="fluid", name="ammonia", amount=20, probability=1},   
    {type="fluid", name="fluorine", amount=20, probability=1}
}

data:extend({adv_aquilo_asteroid_processing})

table.insert(data.raw["technology"]["advanced-asteroid-processing"].effects, {type = "unlock-recipe", recipe = "astra-advanced-aquilo-asteroid-processing"})

local aqui2 = {type="change-recipe-productivity", change = .1, recipe="astra-advanced-aquilo-asteroid-processing"}
table.insert(data.raw["technology"]["asteroid-productivity"].effects,aqui2)
