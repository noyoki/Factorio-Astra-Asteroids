local crude_asteroid_chunk_crushing         = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
local vulcanus_asteroid_chunk_crushing      = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
local nauvis_asteroid_chunk_crushing        = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
local fulgoran_asteroid_chunk_crushing      = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
local gleba_asteroid_chunk_crushing         = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
local aquilo_asteroid_chunk_crushing        = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])

crude_asteroid_chunk_crushing.name = "astra-crude-asteroid-crushing"
crude_asteroid_chunk_crushing.icon = "__Astra-Asteroids__/graphics/crude_crushing_basic.png"
crude_asteroid_chunk_crushing.order = "g[crude].a[basic]"
crude_asteroid_chunk_crushing.enabled = false
crude_asteroid_chunk_crushing.energy_required = 2
crude_asteroid_chunk_crushing.ingredients = { { type = "item", name = "astra-crude-asteroid-chunk", amount = 1 } }
crude_asteroid_chunk_crushing.results = { 
    { type = "item", name = "stone", amount = 5, probability = 1 }, 
    { type = "item", name = "astra-oilstone", amount_min = 4, amount_max = 5, probability = 1 },
    { type = "item", name = "astra-crude-asteroid-chunk", amount_min = 1, amount_max = 1, probability = 0.2 } 
}

vulcanus_asteroid_chunk_crushing.name = "astra-volcanic-asteroid-crushing"
vulcanus_asteroid_chunk_crushing.icon = "__Astra-Asteroids__/graphics/vulcanus_crushing_basic.png"
vulcanus_asteroid_chunk_crushing.order = "i[vulcanus].a[basic]"
vulcanus_asteroid_chunk_crushing.enabled = false
vulcanus_asteroid_chunk_crushing.energy_required = 2
vulcanus_asteroid_chunk_crushing.ingredients = { { type = "item", name = "astra-volcanic-asteroid-chunk", amount = 1 } }
vulcanus_asteroid_chunk_crushing.results = { 
    { type = "item", name = "stone", amount = 5, probability = 1 }, 
    { type = "item", name = "tungsten-ore", amount_min = 4, amount_max = 5 }, 
    { type = "item", name = "astra-volcanic-asteroid-chunk", amount_min = 1, amount_max = 1, probability = 0.2 } 
}

nauvis_asteroid_chunk_crushing.name = "astra-nauvis-asteroid-crushing"
nauvis_asteroid_chunk_crushing.icon = "__Astra-Asteroids__/graphics/nauvis_crushing_basic.png"
nauvis_asteroid_chunk_crushing.order = "h[nauvis].a[basic]"
nauvis_asteroid_chunk_crushing.enabled = false
nauvis_asteroid_chunk_crushing.energy_required = 2
nauvis_asteroid_chunk_crushing.ingredients = { { type = "item", name = "astra-nauvis-asteroid-chunk", amount = 1 } }
nauvis_asteroid_chunk_crushing.results = { 
    { type = "item", name = "stone", amount = 5, probability = 1 }, 
    { type = "item", name = "uranium-ore", amount_min = 10, amount_max = 12 }, 
    { type = "item", name = "astra-nauvis-asteroid-chunk", amount_min = 1, amount_max = 1, probability = 0.20 } 
}

fulgoran_asteroid_chunk_crushing.name = "astra-fulgoran-asteroid-crushing"
fulgoran_asteroid_chunk_crushing.icon = "__Astra-Asteroids__/graphics/fulgora_crushing_basic.png"
fulgoran_asteroid_chunk_crushing.order = "k[fulgora].a[basic]"
fulgoran_asteroid_chunk_crushing.enabled = false
fulgoran_asteroid_chunk_crushing.energy_required = 2
fulgoran_asteroid_chunk_crushing.ingredients = { { type = "item", name = "astra-fulgoran-asteroid-chunk", amount = 1 } }
fulgoran_asteroid_chunk_crushing.results = { 
    { type = "item", name = "stone", amount = 5,  probability = 1 }, 
    { type = "item", name = "scrap", amount_min = 5, amount_max = 15, probability = 1 }, 
    { type = "item", name = "astra-fulgoran-asteroid-chunk", amount_min = 1, amount_max = 1, probability = 0.2 } 
}

gleba_asteroid_chunk_crushing.name = "astra-gleba-asteroid-crushing"
gleba_asteroid_chunk_crushing.icon = "__Astra-Asteroids__/graphics/gleba_crushing_basic.png"
gleba_asteroid_chunk_crushing.order = "j[gleba].a[basic]"
gleba_asteroid_chunk_crushing.enabled = false
gleba_asteroid_chunk_crushing.energy_required = 2
gleba_asteroid_chunk_crushing.ingredients = { { type = "item", name = "astra-gleba-asteroid-chunk", amount = 1 } }
gleba_asteroid_chunk_crushing.results = { 
    { type = "item", name = "stone", amount = 5, probability = 1 }, 
    { type = "item", name = "spoilage", amount_min = 5, amount_max = 10, probability = 1 }, 
    { type = "item", name = "jellynut-seed", amount_min = 1, amount_max = 1, probability = .1 }, 
    { type = "item", name = "yumako-seed", amount_min = 1, amount_max = 1, probability = .1 }, 
    { type = "item", name = "astra-gleba-asteroid-chunk", amount_min = 1, amount_max = 1, probability = 0.2 } 
}

aquilo_asteroid_chunk_crushing.name = "astra-aquilo-asteroid-crushing"
aquilo_asteroid_chunk_crushing.icon = "__Astra-Asteroids__/graphics/crude_crushing_basic.png"
aquilo_asteroid_chunk_crushing.order = "l[aquilo].a[basic]"
aquilo_asteroid_chunk_crushing.enabled = false
aquilo_asteroid_chunk_crushing.energy_required = 2
aquilo_asteroid_chunk_crushing.ingredients = { { type = "item", name = "astra-aquilo-asteroid-chunk", amount = 1 } }
aquilo_asteroid_chunk_crushing.results = { 
    { type = "item", name = "stone", amount = 5, probability = 1 }, 
    { type = "item", name = "lithium", amount_min = 2, amount_max = 5, probability = 1 },
    { type = "item", name = "astra-aquilo-asteroid-chunk", amount_min = 1, amount_max = 1, probability = 0.2 }     
}


data:extend({vulcanus_asteroid_chunk_crushing,nauvis_asteroid_chunk_crushing,fulgoran_asteroid_chunk_crushing,gleba_asteroid_chunk_crushing,aquilo_asteroid_chunk_crushing})

local crude_asteroid_chunk_crushing_adv     = table.deepcopy(data.raw.recipe["advanced-metallic-asteroid-crushing"])
local vulcanis_asteroid_chunk_crushing_adv  = table.deepcopy(data.raw.recipe["advanced-metallic-asteroid-crushing"])
local nauvis_asteroid_chunk_crushing_adv    = table.deepcopy(data.raw.recipe["advanced-metallic-asteroid-crushing"])
local fulgoran_asteroid_chunk_crushing_adv  = table.deepcopy(data.raw.recipe["advanced-metallic-asteroid-crushing"])
local gleba_asteroid_chunk_crushing_adv  = table.deepcopy(data.raw.recipe["advanced-metallic-asteroid-crushing"])

crude_asteroid_chunk_crushing_adv.name = "astra-advanced-crude-asteroid-crushing"
crude_asteroid_chunk_crushing_adv.icon = "__Astra-Asteroids__/graphics/crude_crushing_basic.png"
crude_asteroid_chunk_crushing_adv.localised_name = {"recipe-name.astra-advanced-crude-asteroid-crushing"}
crude_asteroid_chunk_crushing_adv.order = "g[crude].b[adv]"
crude_asteroid_chunk_crushing_adv.enabled = false
crude_asteroid_chunk_crushing_adv.energy_required = 5
crude_asteroid_chunk_crushing_adv.ingredients = { { type = "item", name = "astra-crude-asteroid-chunk", amount = 1 } }
crude_asteroid_chunk_crushing_adv.results = { 
    { type = "item", name = "astra-oilstone", amount_min = 5, amount_max = 8, probability = 1 }, 
    { type = "item", name = "coal", amount_min = 5, amount_max = 8, probability = 1 }, 
    { type = "item", name = "astra-crude-asteroid-chunk", amount_min = 1, amount_max = 1, probability = 0.05 } 
}

vulcanis_asteroid_chunk_crushing_adv.name = "astra-advanced-volcanic-asteroid-crushing"
vulcanis_asteroid_chunk_crushing_adv.icon = "__Astra-Asteroids__/graphics/vulcanus_crushing_basic.png"
vulcanis_asteroid_chunk_crushing_adv.localised_name = {"recipe-name.astra-advanced-volcanic-asteroid-crushing"}
vulcanis_asteroid_chunk_crushing_adv.order = "i[vulcanus].v[adv]"
vulcanis_asteroid_chunk_crushing_adv.enabled = false
vulcanis_asteroid_chunk_crushing_adv.energy_required = 5
vulcanis_asteroid_chunk_crushing_adv.ingredients = { { type = "item", name = "astra-volcanic-asteroid-chunk", amount = 1 } }
vulcanis_asteroid_chunk_crushing_adv.results = { 
    { type = "item", name = "tungsten-ore", amount_min = 10, amount_max = 14, probability = 1 }, 
    { type = "item", name = "astra-volcanic-asteroid-chunk", amount_min = 1, amount_max = 1, probability = 0.05 } 
}

nauvis_asteroid_chunk_crushing_adv.name = "astra-advanced-nauvis-asteroid-crushing"
nauvis_asteroid_chunk_crushing_adv.icon = "__Astra-Asteroids__/graphics/nauvis_crushing_basic.png"
nauvis_asteroid_chunk_crushing_adv.localised_name = {"recipe-name.astra-advanced-nauvis-asteroid-crushing"}
nauvis_asteroid_chunk_crushing_adv.order = "h[nauvis].b[adv]"
nauvis_asteroid_chunk_crushing_adv.enabled = false
nauvis_asteroid_chunk_crushing_adv.energy_required = 5
nauvis_asteroid_chunk_crushing_adv.ingredients = { { type = "item", name = "astra-nauvis-asteroid-chunk", amount = 1 } }
nauvis_asteroid_chunk_crushing_adv.results = { 
    { type = "item", name = "uranium-238", amount_min = 3, amount_max = 5, }, 
    { type = "item", name = "uranium-235", amount_min = 1, amount_max = 1, probability = .3},    
    { type = "item", name = "astra-nauvis-asteroid-chunk", amount_min = 1, amount_max = 1, probability = 0.05 } 
}

fulgoran_asteroid_chunk_crushing_adv.name = "astra-advanced-fulgoran-asteroid-crushing"
fulgoran_asteroid_chunk_crushing_adv.icon = "__Astra-Asteroids__/graphics/fulgora_crushing_basic.png"
fulgoran_asteroid_chunk_crushing_adv.localised_name = {"recipe-name.astra-advanced-fulgoran-asteroid-crushing"}
fulgoran_asteroid_chunk_crushing_adv.order = "k[fulgora].b[adv]"
fulgoran_asteroid_chunk_crushing_adv.enabled = false
fulgoran_asteroid_chunk_crushing_adv.energy_required = 5
fulgoran_asteroid_chunk_crushing_adv.ingredients = { { type = "item", name = "astra-fulgoran-asteroid-chunk", amount = 1 } }
fulgoran_asteroid_chunk_crushing_adv.results = { 
    { type = "item", name = "scrap", amount_min = 30, amount_max = 50, probability = 1 }, 
    { type = "item", name = "holmium-ore", amount_min = 3, amount_max = 4, probability = 0.5 }, 
    { type = "item", name = "astra-fulgoran-asteroid-chunk", amount_min = 1, amount_max = 1, probability = 0.05 } 
}

gleba_asteroid_chunk_crushing_adv.name = "astra-advanced-gleba-asteroid-crushing"
gleba_asteroid_chunk_crushing_adv.icon = "__Astra-Asteroids__/graphics/gleba_crushing_basic.png"
gleba_asteroid_chunk_crushing_adv.localised_name = {"recipe-name.astra-advanced-gleba-asteroid-crushing"}
gleba_asteroid_chunk_crushing_adv.order = "j[gleba].b[adv]"
gleba_asteroid_chunk_crushing_adv.enabled = false
gleba_asteroid_chunk_crushing_adv.energy_required = 5
gleba_asteroid_chunk_crushing_adv.ingredients = { { type = "item", name = "astra-gleba-asteroid-chunk", amount = 1 } }
gleba_asteroid_chunk_crushing_adv.results = { 
    { type = "item", name = "spoilage", amount_min = 10, amount_max = 20, probability = 1 }, 
    { type = "item", name = "jellynut-seed", amount_min = 1, amount_max = 2, probability = .3 }, 
    { type = "item", name = "yumako-seed", amount_min = 1, amount_max = 2, probability = .3 }, 
    { type = "item", name = "astra-gleba-asteroid-chunk", amount_min = 1, amount_max = 1, probability = 0.05 } 
}

data:extend({vulcanis_asteroid_chunk_crushing_adv,nauvis_asteroid_chunk_crushing_adv,fulgoran_asteroid_chunk_crushing_adv,gleba_asteroid_chunk_crushing_adv})

if settings.startup["astra-include-crude-asteroid"].value == true then
data:extend({crude_asteroid_chunk_crushing,crude_asteroid_chunk_crushing_adv})

table.insert(data.raw["technology"]["space-platform"].effects, {type = "unlock-recipe", recipe = "astra-crude-asteroid-crushing"})
table.insert(data.raw["technology"]["advanced-asteroid-processing"].effects, {type = "unlock-recipe", recipe = "astra-advanced-crude-asteroid-crushing"})

local crude1 = {type="change-recipe-productivity", change = .1, recipe="astra-crude-asteroid-crushing"}
local crude2 = {type="change-recipe-productivity", change = .1, recipe="astra-advanced-crude-asteroid-crushing"}
table.insert(data.raw["technology"]["asteroid-productivity"].effects,crude1)
table.insert(data.raw["technology"]["asteroid-productivity"].effects,crude2)

end

table.insert(data.raw["technology"]["space-platform"].effects, {type = "unlock-recipe", recipe = "astra-nauvis-asteroid-crushing"})
table.insert(data.raw["technology"]["advanced-asteroid-processing"].effects, {type = "unlock-recipe", recipe = "astra-advanced-nauvis-asteroid-crushing"})
table.insert(data.raw["technology"]["space-platform"].effects, {type = "unlock-recipe", recipe = "astra-volcanic-asteroid-crushing"})
table.insert(data.raw["technology"]["advanced-asteroid-processing"].effects, {type = "unlock-recipe", recipe = "astra-advanced-volcanic-asteroid-crushing"})
table.insert(data.raw["technology"]["space-platform"].effects, {type = "unlock-recipe", recipe = "astra-fulgoran-asteroid-crushing"})
table.insert(data.raw["technology"]["advanced-asteroid-processing"].effects, {type = "unlock-recipe", recipe = "astra-advanced-fulgoran-asteroid-crushing"})
table.insert(data.raw["technology"]["space-platform"].effects, {type = "unlock-recipe", recipe = "astra-gleba-asteroid-crushing"})
table.insert(data.raw["technology"]["advanced-asteroid-processing"].effects, {type = "unlock-recipe", recipe = "astra-advanced-gleba-asteroid-crushing"})
table.insert(data.raw["technology"]["space-platform"].effects, {type = "unlock-recipe", recipe = "astra-aquilo-asteroid-crushing"})

       
local radio1 = {type="change-recipe-productivity", change = .1, recipe="astra-nauvis-asteroid-crushing"}
local radio2 = {type="change-recipe-productivity", change = .1, recipe="astra-advanced-nauvis-asteroid-crushing"}
local volc1 = {type="change-recipe-productivity", change = .1, recipe="astra-volcanic-asteroid-crushing"}
local volc2 = {type="change-recipe-productivity", change = .1, recipe="astra-advanced-volcanic-asteroid-crushing"}
local fulg1 = {type="change-recipe-productivity", change = .1, recipe="astra-fulgoran-asteroid-crushing"}
local fulg2 = {type="change-recipe-productivity", change = .1, recipe="astra-advanced-fulgoran-asteroid-crushing"}
local gleb1 = {type="change-recipe-productivity", change = .1, recipe="astra-gleba-asteroid-crushing"}
local gleb2 = {type="change-recipe-productivity", change = .1, recipe="astra-advanced-gleba-asteroid-crushing"}
local aqui1 = {type="change-recipe-productivity", change = .1, recipe="astra-aquilo-asteroid-crushing"}


table.insert(data.raw["technology"]["asteroid-productivity"].effects,radio1)
table.insert(data.raw["technology"]["asteroid-productivity"].effects,radio2)
table.insert(data.raw["technology"]["asteroid-productivity"].effects,volc1)
table.insert(data.raw["technology"]["asteroid-productivity"].effects,volc2)
table.insert(data.raw["technology"]["asteroid-productivity"].effects,fulg1)
table.insert(data.raw["technology"]["asteroid-productivity"].effects,fulg2)
table.insert(data.raw["technology"]["asteroid-productivity"].effects,gleb1)
table.insert(data.raw["technology"]["asteroid-productivity"].effects,gleb2)
table.insert(data.raw["technology"]["asteroid-productivity"].effects,aqui1)



local crude_repro  = table.deepcopy(data.raw.recipe["metallic-asteroid-processing"])
crude_repro.name = "astra-crude-asteroid-processing"
crude_repro.icon = "__Astra-Asteroids__/graphics/crude_crushing_basic.png"
crude_repro.localised_name = {"recipe-name.astra-crude-asteroid-processing"}
crude_repro.allow_productivty = false
crude_repro.order = "b-b-d"
crude_repro.enabled = false
crude_repro.ingredients = { { type = "item", name = "astra-crude-asteroid-chunk", amount = 1 } }
crude_repro.results = { 
    { type = "item", name = "astra-crude-asteroid-chunk", amount = 1,  probability = .2 }, 
    { type = "item", name = "metallic-asteroid-chunk", amount = 1,  probability = .2 }, 
    { type = "item", name = "oxide-asteroid-chunk", amount = 1,  probability = .2 }, 
    { type = "item", name = "carbonic-asteroid-chunk", amount= 1, probability = .2 }  
}

    
local radio_repro  = table.deepcopy(data.raw.recipe["metallic-asteroid-processindg"])
radio_repro.name = "astra-nauvis-asteroid-processing"
radio_repro.icon = "__Astra-Asteroids__/graphics/nauvis_asteroid_reroll.png"
radio_repro.localised_name = {"recipe-name.astra-nauvis-asteroid-processing"}
radio_repro.allow_productivty = false
radio_repro.order = "b-b-e"
radio_repro.enabled = false
radio_repro.ingredients = { { type = "item", name = "astra-nauvis-asteroid-chunk", amount = 1 } }
radio_repro.results = { 
    { type = "item", name = "astra-nauvis-asteroid-chunk", amount = 1,  probability = .2 }, 
    { type = "item", name = "metallic-asteroid-chunk", amount = 1,  probability = .2 }, 
    { type = "item", name = "oxide-asteroid-chunk", amount = 1,  probability = .2 }, 
    { type = "item", name = "carbonic-asteroid-chunk", amount= 1, probability = .2 }  
}
    
local volca_repro  = table.deepcopy(data.raw.recipe["metallic-asteroid-processindg"])
volca_repro.name = "astra-volcanic-asteroid-processing"
volca_repro.icon = "__Astra-Asteroids__/graphics/vulcanus_asteroid_reroll.png"
volca_repro.localised_name = {"recipe-name.astra-volcanic-asteroid-processing"}
volca_repro.allow_productivty = false
volca_repro.order = "b-b-f"
volca_repro.enabled = false
volca_repro.ingredients = { { type = "item", name = "astra-volcanic-asteroid-chunk", amount = 1 } }
volca_repro.results = { 
    { type = "item", name = "astra-volcanic-asteroid-chunk", amount = 1,  probability = .2 }, 
    { type = "item", name = "metallic-asteroid-chunk", amount = 1,  probability = .2 }, 
    { type = "item", name = "oxide-asteroid-chunk", amount = 1,  probability = .2 }, 
    { type = "item", name = "carbonic-asteroid-chunk", amount= 1, probability = .2 }  
}
    
local fulga_repro  = table.deepcopy(data.raw.recipe["metallic-asteroid-processindg"])
fulga_repro.name = "astra-fulgoran-asteroid-processing"
fulga_repro.icon = "__Astra-Asteroids__/graphics/fulgoran_asteroid_reroll.png"
fulga_repro.localised_name = {"recipe-name.astra-fulgoran-asteroid-processing"}
fulga_repro.allow_productivty = false
fulga_repro.order = "b-b-g"
fulga_repro.enabled = false
fulga_repro.ingredients = { { type = "item", name = "astra-fulgoran-asteroid-chunk", amount = 1 } }
fulga_repro.results = { 
    { type = "item", name = "astra-fulgoran-asteroid-chunk", amount = 1,  probability = .2 }, 
    { type = "item", name = "metallic-asteroid-chunk", amount = 1,  probability = .2 }, 
    { type = "item", name = "oxide-asteroid-chunk", amount = 1,  probability = .2 }, 
    { type = "item", name = "carbonic-asteroid-chunk", amount= 1, probability = .2 }  
}

local fulga_repro  = table.deepcopy(data.raw.recipe["metallic-asteroid-processindg"])
fulga_repro.name = "astra-fulgoran-asteroid-processing"
fulga_repro.icon = "__Astra-Asteroids__/graphics/fulgoran_asteroid_reroll.png"
fulga_repro.localised_name = {"recipe-name.astra-fulgoran-asteroid-processing"}
fulga_repro.allow_productivty = false
fulga_repro.order = "b-b-h"
fulga_repro.enabled = false
fulga_repro.ingredients = { { type = "item", name = "astra-fulgoran-asteroid-chunk", amount = 1 } }
fulga_repro.results = { 
    { type = "item", name = "astra-fulgoran-asteroid-chunk", amount = 1,  probability = .2 }, 
    { type = "item", name = "metallic-asteroid-chunk", amount = 1,  probability = .2 }, 
    { type = "item", name = "oxide-asteroid-chunk", amount = 1,  probability = .2 }, 
    { type = "item", name = "carbonic-asteroid-chunk", amount= 1, probability = .2 }  
}

local gleba_repro  = table.deepcopy(data.raw.recipe["metallic-asteroid-processindg"])
gleba_repro.name = "astra-gleba-asteroid-processing"
gleba_repro.icon = "__Astra-Asteroids__/graphics/gleba_asteroid_reroll.png"
gleba_repro.localised_name = {"recipe-name.astra-gleba-asteroid-processing"}
gleba_repro.allow_productivty = false
gleba_repro.order = "b-b-i"
gleba_repro.enabled = false
gleba_repro.ingredients = { { type = "item", name = "astra-gleba-asteroid-chunk", amount = 1 } }
gleba_repro.results = { 
    { type = "item", name = "astra-gleba-asteroid-chunk", amount = 1,  probability = .2 }, 
    { type = "item", name = "metallic-asteroid-chunk", amount = 1,  probability = .2 }, 
    { type = "item", name = "oxide-asteroid-chunk", amount = 1,  probability = .2 }, 
    { type = "item", name = "carbonic-asteroid-chunk", amount= 1, probability = .2 }  
}

local aquil_repro  = table.deepcopy(data.raw.recipe["metallic-asteroid-processindg"])
aquil_repro.name = "astra-aquilo-asteroid-processing"
aquil_repro.icon = "__Astra-Asteroids__/graphics/crude_asteroid_crushing.png"
aquil_repro.localised_name = {"recipe-name.astra-aquilo-asteroid-processing"}
aquil_repro.allow_productivty = false
aquil_repro.order = "b-b-j"
aquil_repro.enabled = false
aquil_repro.ingredients = { { type = "item", name = "astra-aquilo-asteroid-chunk", amount = 1 } }
aquil_repro.results = { 
    { type = "item", name = "astra-aquilo-asteroid-chunk", amount = 1,  probability = .2 }, 
    { type = "item", name = "metallic-asteroid-chunk", amount = 1,  probability = .2 }, 
    { type = "item", name = "oxide-asteroid-chunk", amount = 1,  probability = .2 }, 
    { type = "item", name = "carbonic-asteroid-chunk", amount= 1, probability = .2 }  
}


if settings.startup["astra-include-crude-asteroid"].value == true then
enddata:extend({crude_repro})
table.insert(data.raw["technology"]["asteroid-reprocessing"].effects, {type = "unlock-recipe", recipe = "astra-crude-asteroid-processing"})
end

data:extend({radio_repro,volca_repro,fulga_repro,gleba_repro,aquil_repro})
table.insert(data.raw["technology"]["asteroid-reprocessing"].effects, {type = "unlock-recipe", recipe = "astra-nauvis-asteroid-processing"})
table.insert(data.raw["technology"]["asteroid-reprocessing"].effects, {type = "unlock-recipe", recipe = "astra-volcanic-asteroid-processing"})
table.insert(data.raw["technology"]["asteroid-reprocessing"].effects, {type = "unlock-recipe", recipe = "astra-fulgoran-asteroid-processing"})
table.insert(data.raw["technology"]["asteroid-reprocessing"].effects, {type = "unlock-recipe", recipe = "astra-gleba-asteroid-processing"})
table.insert(data.raw["technology"]["asteroid-reprocessing"].effects, {type = "unlock-recipe", recipe = "astra-aquilo-asteroid-processing"})







