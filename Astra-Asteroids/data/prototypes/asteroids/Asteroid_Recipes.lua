local crude_asteroid_chunk_crushing = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
local vulcanus_asteroid_chunk_crushing = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
local nauvis_asteroid_chunk_crushing = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
local fulgoran_asteroid_chunk_crushing = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
local vulcanis_asteroid_chunk_crushing_adv = table.deepcopy(data.raw.recipe["advanced-metallic-asteroid-crushing"])
local nauvis_asteroid_chunk_crushing_adv = table.deepcopy(data.raw.recipe["advanced-metallic-asteroid-crushing"])
local fulgoran_asteroid_chunk_crushing_adv = table.deepcopy(data.raw.recipe["advanced-metallic-asteroid-crushing"])
local vulcanus_special_crushing = table.deepcopy(data.raw.recipe["advanced-metallic-asteroid-crushing"])
local fulgoran_special_crushing = table.deepcopy(data.raw.recipe["advanced-metallic-asteroid-crushing"])

crude_asteroid_chunk_crushing.name = "crude-asteroid-chunk-crushing"
crude_asteroid_chunk_crushing.icon = "__Astra-Asteroids__/graphics/crude_crushing_basic.png"
crude_asteroid_chunk_crushing.order = "a"
crude_asteroid_chunk_crushing.enabled = false
crude_asteroid_chunk_crushing.energy_required = 2
crude_asteroid_chunk_crushing.ingredients = { { type = "item", name = "crude-asteroid-chunk-item", amount = 1 } }
crude_asteroid_chunk_crushing.results = { 
    { type = "item", name = "solid-fuel", amount_min = 5, amount_max = 15, probability = 1 } 
}

vulcanus_asteroid_chunk_crushing.name = "vulcanus-asteroid-chunk-crushing"
vulcanus_asteroid_chunk_crushing.icon = "__Astra-Asteroids__/graphics/vulcanus_crushing_basic.png"
vulcanus_asteroid_chunk_crushing.order = "v"
vulcanus_asteroid_chunk_crushing.enabled = false
vulcanus_asteroid_chunk_crushing.energy_required = 2
vulcanus_asteroid_chunk_crushing.ingredients = { { type = "item", name = "vulcanic-asteroid-chunk-item", amount = 1 } }
vulcanus_asteroid_chunk_crushing.results = { 
    { type = "item", name = "stone", amount_min = 4, amount_max = 6, probability = 1 }, 
    { type = "item", name = "tungsten-ore", amount_min = 1, amount_max = 2, probability = 0.15 }, 
    { type = "item", name = "vulcanic-asteroid-chunk-item", amount_min = 1, amount_max = 1, probability = 0.05 } 
}

nauvis_asteroid_chunk_crushing.name = "nauvis-asteroid-chunk-crushing"
nauvis_asteroid_chunk_crushing.icon = "__Astra-Asteroids__/graphics/nauvis_crushing_basic.png"
nauvis_asteroid_chunk_crushing.order = "n"
nauvis_asteroid_chunk_crushing.enabled = false
nauvis_asteroid_chunk_crushing.energy_required = 2
nauvis_asteroid_chunk_crushing.ingredients = { { type = "item", name = "nauvis-asteroid-chunk-item", amount = 1 } }
nauvis_asteroid_chunk_crushing.results = { 
    { type = "item", name = "stone", amount_min = 5, amount_max = 10, probability = 1 }, 
    { type = "item", name = "uranium-ore", amount_min = 1, amount_max = 1, probability = 0.1 }, 
    { type = "item", name = "nauvis-asteroid-chunk-item", amount_min = 1, amount_max = 1, probability = 0.05 } 
}

fulgoran_asteroid_chunk_crushing.name = "fulgoran-asteroid-chunk-crushing"
fulgoran_asteroid_chunk_crushing.icon = "__Astra-Asteroids__/graphics/fulgora_crushing_basic.png"
fulgoran_asteroid_chunk_crushing.order = "f"
fulgoran_asteroid_chunk_crushing.enabled = false
fulgoran_asteroid_chunk_crushing.energy_required = 2
fulgoran_asteroid_chunk_crushing.ingredients = { { type = "item", name = "fulgoran-asteroid-chunk-item", amount = 1 } }
fulgoran_asteroid_chunk_crushing.results = { 
    { type = "item", name = "stone", amount_min = 4, amount_max = 6, probability = 1 }, 
    { type = "item", name = "scrap", amount_min = 2, amount_max = 12, probability = 1 }, 
    { type = "item", name = "fulgoran-asteroid-chunk-item", amount_min = 1, amount_max = 1, probability = 0.05 } 
}

vulcanis_asteroid_chunk_crushing_adv.name = "vulcanis-asteroid-chunk-crushing-adv"
vulcanis_asteroid_chunk_crushing_adv.icon = "__Astra-Asteroids__/graphics/vulcanus_crushing_basic.png"
vulcanis_asteroid_chunk_crushing_adv.order = "v"
vulcanis_asteroid_chunk_crushing_adv.enabled = false
vulcanis_asteroid_chunk_crushing_adv.energy_required = 5
vulcanis_asteroid_chunk_crushing_adv.ingredients = { { type = "item", name = "vulcanic-asteroid-chunk-item", amount = 1 } }
vulcanis_asteroid_chunk_crushing_adv.results = { 
    { type = "item", name = "stone", amount_min = 8, amount_max = 8, probability = 1 }, 
    { type = "item", name = "tungsten-ore", amount_min = 10, amount_max = 10, probability = 1 }, 
    { type = "item", name = "vulcanic-asteroid-chunk-item", amount_min = 1, amount_max = 1, probability = 0.05 } 
}

nauvis_asteroid_chunk_crushing_adv.name = "nauvis-asteroid-chunk-crushing-adv"
nauvis_asteroid_chunk_crushing_adv.icon = "__Astra-Asteroids__/graphics/nauvis_crushing_basic.png"
nauvis_asteroid_chunk_crushing_adv.order = "n"
nauvis_asteroid_chunk_crushing_adv.enabled = false
nauvis_asteroid_chunk_crushing_adv.energy_required = 5
nauvis_asteroid_chunk_crushing_adv.ingredients = { { type = "item", name = "nauvis-asteroid-chunk-item", amount = 1 } }
nauvis_asteroid_chunk_crushing_adv.results = { 
    { type = "item", name = "stone", amount_min = 4, amount_max = 8, probability = 1 }, 
    { type = "item", name = "uranium-ore", amount_min = 1, amount_max = 13, probability = 0.4 }, 
    { type = "item", name = "nauvis-asteroid-chunk-item", amount_min = 1, amount_max = 1, probability = 0.05 } 
}

fulgoran_asteroid_chunk_crushing_adv.name = "fulgoran-asteroid-chunk-crushing-adv"
fulgoran_asteroid_chunk_crushing_adv.icon = "__Astra-Asteroids__/graphics/fulgora_crushing_basic.png"
fulgoran_asteroid_chunk_crushing_adv.order = "f"
fulgoran_asteroid_chunk_crushing_adv.enabled = false
fulgoran_asteroid_chunk_crushing_adv.energy_required = 5
fulgoran_asteroid_chunk_crushing_adv.ingredients = { { type = "item", name = "fulgoran-asteroid-chunk-item", amount = 1 } }
fulgoran_asteroid_chunk_crushing_adv.results = { 
    { type = "item", name = "stone", amount_min = 4, amount_max = 6, probability = 1 }, 
    { type = "item", name = "scrap", amount_min = 35, amount_max = 75, probability = 1 }, 
    { type = "item", name = "holmium-ore", amount_min = 3, amount_max = 8, probability = 0.5 }, 
    { type = "item", name = "fulgoran-asteroid-chunk-item", amount_min = 1, amount_max = 1, probability = 0.05 } 
}

vulcanus_special_crushing.name = "vulcanus-special-crushing"
vulcanus_special_crushing.icon = "__Astra-Asteroids__/graphics/vulcanus_crushing_basic.png"
vulcanus_special_crushing.order = "v"
vulcanus_special_crushing.enabled = false
vulcanus_special_crushing.energy_required = 5
vulcanus_special_crushing.ingredients = { { type = "item", name = "vulcanic-asteroid-chunk-item", amount = 1 }, { type = "item", name = "metallic-astroid-chunk", amount = 1 } }
vulcanus_special_crushing.results = { 
    { type = "fluid", name = "lava", amount_min = 2000, amount_max = 2000, probability = 1 }, 
    { type = "item", name = "tungsten-ore", amount_min = 12, amount_max = 12, probability = 1 } 
}

fulgoran_special_crushing.name = "fulgoran-special-crushing"
fulgoran_special_crushing.icon = "__Astra-Asteroids__/graphics/fulgora_crushing_basic.png"
fulgoran_special_crushing.order = "f"
fulgoran_special_crushing.enabled = false
fulgoran_special_crushing.energy_required = 10
fulgoran_special_crushing.ingredients = { { type = "item", name = "fulgoran-asteroid-chunk-item", amount = 1 }, { type = "item", name = "carbonic-asteroid-chunk-item", amount = 1 } }
fulgoran_special_crushing.results = { 
    { type = "item", name = "stone", amount_min = 5, amount_max = 5, probability = 1 }, 
    { type = "fluid", name = "heavy-oil", amount_min = 20, amount_max = 20, probability = 1 }, 
    { type = "fluid", name = "holmium-solution", amount_min = 20, amount_max = 20, probability = 1 } 
}