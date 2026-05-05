local crude_asteroid_chunk_crushing         = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
local vulcanus_asteroid_chunk_crushing      = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
local nauvis_asteroid_chunk_crushing        = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
local fulgoran_asteroid_chunk_crushing      = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
local crude_asteroid_chunk_crushing_adv     = table.deepcopy(data.raw.recipe["advanced-metallic-asteroid-crushing"])
local vulcanis_asteroid_chunk_crushing_adv  = table.deepcopy(data.raw.recipe["advanced-metallic-asteroid-crushing"])
local nauvis_asteroid_chunk_crushing_adv    = table.deepcopy(data.raw.recipe["advanced-metallic-asteroid-crushing"])
local fulgoran_asteroid_chunk_crushing_adv  = table.deepcopy(data.raw.recipe["advanced-metallic-asteroid-crushing"])

crude_asteroid_chunk_crushing.name = "astra-crude-asteroid-crushing"
crude_asteroid_chunk_crushing.icon = "__Astra-Asteroids__/graphics/crude_crushing_basic.png"
crude_asteroid_chunk_crushing.order = "a"
crude_asteroid_chunk_crushing.enabled = false
crude_asteroid_chunk_crushing.energy_required = 2
crude_asteroid_chunk_crushing.ingredients = { { type = "item", name = "astra-crude-asteroid-chunk", amount = 1 } }
crude_asteroid_chunk_crushing.results = { 
    { type = "item", name = "stone", amount_min = 5, amount_max = 10, probability = 1 }, 
    { type = "item", name = "astra-oilstone", amount_min = 5, amount_max = 10, probability = 1 },
    { type = "item", name = "astra-crude-asteroid-chunk", amount_min = 1, amount_max = 1, probability = 0.05 } 
}

vulcanus_asteroid_chunk_crushing.name = "astra-vulcanus-asteroid-crushing"
vulcanus_asteroid_chunk_crushing.icon = "__Astra-Asteroids__/graphics/vulcanus_crushing_basic.png"
vulcanus_asteroid_chunk_crushing.order = "v"
vulcanus_asteroid_chunk_crushing.enabled = false
vulcanus_asteroid_chunk_crushing.energy_required = 2
vulcanus_asteroid_chunk_crushing.ingredients = { { type = "item", name = "astra-vulcanic-asteroid-chunk", amount = 1 } }
vulcanus_asteroid_chunk_crushing.results = { 
    { type = "item", name = "stone", amount_min = 4, amount_max = 6, probability = 1 }, 
    { type = "item", name = "tungsten-ore", amount_min = 1, amount_max = 2, probability = 0.15 }, 
    { type = "item", name = "astra-vulcanic-asteroid-chunk", amount_min = 1, amount_max = 1, probability = 0.05 } 
}

nauvis_asteroid_chunk_crushing.name = "astra-nauvis-asteroid-crushing"
nauvis_asteroid_chunk_crushing.icon = "__Astra-Asteroids__/graphics/nauvis_crushing_basic.png"
nauvis_asteroid_chunk_crushing.order = "n"
nauvis_asteroid_chunk_crushing.enabled = false
nauvis_asteroid_chunk_crushing.energy_required = 2
nauvis_asteroid_chunk_crushing.ingredients = { { type = "item", name = "astra-nauvis-asteroid-chunk", amount = 1 } }
nauvis_asteroid_chunk_crushing.results = { 
    { type = "item", name = "stone", amount_min = 5, amount_max = 10, probability = 1 }, 
    { type = "item", name = "uranium-ore", amount_min = 1, amount_max = 1, probability = 0.1 }, 
    { type = "item", name = "astra-nauvis-asteroid-chunk", amount_min = 1, amount_max = 1, probability = 0.05 } 
}

fulgoran_asteroid_chunk_crushing.name = "astra-fulgoran-asteroid-crushing"
fulgoran_asteroid_chunk_crushing.icon = "__Astra-Asteroids__/graphics/fulgora_crushing_basic.png"
fulgoran_asteroid_chunk_crushing.order = "f"
fulgoran_asteroid_chunk_crushing.enabled = false
fulgoran_asteroid_chunk_crushing.energy_required = 2
fulgoran_asteroid_chunk_crushing.ingredients = { { type = "item", name = "astra-fulgoran-asteroid-chunk", amount = 1 } }
fulgoran_asteroid_chunk_crushing.results = { 
    { type = "item", name = "stone", amount_min = 4, amount_max = 6, probability = 1 }, 
    { type = "item", name = "scrap", amount_min = 2, amount_max = 12, probability = 1 }, 
    { type = "item", name = "astra-fulgoran-asteroid-chunk", amount_min = 1, amount_max = 1, probability = 0.05 } 
}

crude_asteroid_chunk_crushing_adv.name = "astra-advanced-crude-asteroid-crushing"
crude_asteroid_chunk_crushing_adv.icon = "__Astra-Asteroids__/graphics/crude_crushing_basic.png"
crude_asteroid_chunk_crushing_adv.order = "a"
crude_asteroid_chunk_crushing_adv.enabled = false
crude_asteroid_chunk_crushing_adv.energy_required = 5
crude_asteroid_chunk_crushing_adv.ingredients = { { type = "item", name = "astra-crude-asteroid-chunk", amount = 1 } }
crude_asteroid_chunk_crushing_adv.results = { 
    { type = "item", name = "astra-oilstone", amount_min = 5, amount_max = 10, probability = 1 }, 
    { type = "item", name = "coal", amount_min = 5, amount_max = 8, probability = 1 }, 
    { type = "item", name = "astra-crude-asteroid-chunk", amount_min = 1, amount_max = 1, probability = 0.05 } 
}

vulcanis_asteroid_chunk_crushing_adv.name = "astra-advanced-vulcanis-asteroid-crushing"
vulcanis_asteroid_chunk_crushing_adv.icon = "__Astra-Asteroids__/graphics/vulcanus_crushing_basic.png"
vulcanis_asteroid_chunk_crushing_adv.order = "v"
vulcanis_asteroid_chunk_crushing_adv.enabled = false
vulcanis_asteroid_chunk_crushing_adv.energy_required = 5
vulcanis_asteroid_chunk_crushing_adv.ingredients = { { type = "item", name = "astra-vulcanic-asteroid-chunk", amount = 1 } }
vulcanis_asteroid_chunk_crushing_adv.results = { 
    { type = "item", name = "stone", amount_min = 8, amount_max = 8, probability = 1 }, 
    { type = "item", name = "tungsten-ore", amount_min = 10, amount_max = 10, probability = 1 }, 
    { type = "item", name = "astra-vulcanic-asteroid-chunk", amount_min = 1, amount_max = 1, probability = 0.05 } 
}

nauvis_asteroid_chunk_crushing_adv.name = "astra-advanced-nauvis-asteroid-crushing"
nauvis_asteroid_chunk_crushing_adv.icon = "__Astra-Asteroids__/graphics/nauvis_crushing_basic.png"
nauvis_asteroid_chunk_crushing_adv.order = "n"
nauvis_asteroid_chunk_crushing_adv.enabled = false
nauvis_asteroid_chunk_crushing_adv.energy_required = 5
nauvis_asteroid_chunk_crushing_adv.ingredients = { { type = "item", name = "astra-nauvis-asteroid-chunk", amount = 1 } }
nauvis_asteroid_chunk_crushing_adv.results = { 
    { type = "item", name = "stone", amount_min = 4, amount_max = 8, probability = 1 }, 
    { type = "item", name = "uranium-ore", amount_min = 1, amount_max = 13, probability = 0.4 }, 
    { type = "item", name = "astra-nauvis-asteroid-chunk", amount_min = 1, amount_max = 1, probability = 0.05 } 
}

fulgoran_asteroid_chunk_crushing_adv.name = "astra-advanced-fulgoran-asteroid-crushing"
fulgoran_asteroid_chunk_crushing_adv.icon = "__Astra-Asteroids__/graphics/fulgora_crushing_basic.png"
fulgoran_asteroid_chunk_crushing_adv.order = "f"
fulgoran_asteroid_chunk_crushing_adv.enabled = false
fulgoran_asteroid_chunk_crushing_adv.energy_required = 5
fulgoran_asteroid_chunk_crushing_adv.ingredients = { { type = "item", name = "astra-fulgoran-asteroid-chunk", amount = 1 } }
fulgoran_asteroid_chunk_crushing_adv.results = { 
    { type = "item", name = "stone", amount_min = 4, amount_max = 6, probability = 1 }, 
    { type = "item", name = "scrap", amount_min = 35, amount_max = 75, probability = 1 }, 
    { type = "item", name = "holmium-ore", amount_min = 3, amount_max = 8, probability = 0.5 }, 
    { type = "item", name = "astra-fulgoran-asteroid-chunk", amount_min = 1, amount_max = 1, probability = 0.05 } 
}


data:extend({vulcanus_asteroid_chunk_crushing,nauvis_asteroid_chunk_crushing,fulgoran_asteroid_chunk_crushing})
data:extend({vulcanis_asteroid_chunk_crushing_adv,nauvis_asteroid_chunk_crushing_adv,fulgoran_asteroid_chunk_crushing_adv})

if settings.startup["astra-include-crude-asteroid"].value == true then
data:extend({crude_asteroid_chunk_crushing,crude_asteroid_chunk_crushing_adv})

table.insert(data.raw["technology"]["space-platform"].effects, {type = "unlock-recipe", recipe = "astra-crude-asteroid-chunk-crushing"})
table.insert(data.raw["technology"]["advanced-asteroid-processing"].effects, {type = "unlock-recipe", recipe = "astra-advanced-crude-asteroid-chunk-crushing"})
end

table.insert(data.raw["technology"]["space-platform"].effects, {type = "unlock-recipe", recipe = "astra-nauvis-asteroid-chunk-crushing"})
table.insert(data.raw["technology"]["advanced-asteroid-processing"].effects, {type = "unlock-recipe", recipe = "astra-advanced-nauvis-asteroid-chunk-crushing"})
table.insert(data.raw["technology"]["space-platform"].effects, {type = "unlock-recipe", recipe = "astra-vulcanic-asteroid-chunk-crushing"})
table.insert(data.raw["technology"]["advanced-asteroid-processing"].effects, {type = "unlock-recipe", recipe = "astra-advanced-vulcanic-asteroid-chunk-crushing"})
table.insert(data.raw["technology"]["space-platform"].effects, {type = "unlock-recipe", recipe = "astra-fulgoran-asteroid-chunk-crushing"})
table.insert(data.raw["technology"]["advanced-asteroid-processing"].effects, {type = "unlock-recipe", recipe = "astra-advanced-fulgoran-asteroid-chunk-crushing"})





      
     
       
    
     
  
    
  