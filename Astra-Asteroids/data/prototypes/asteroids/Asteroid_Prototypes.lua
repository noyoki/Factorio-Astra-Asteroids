local small_size = 64
local medium_size = 48
local large_size = 32
local chunk_scale = .3
local small_scale =.7
local medium_scale = 1.5
local large_scale = 2.2

local crude_asteroid_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])
local nauvis_asteroid_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])
local vulcanus_asteroid_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])
local gleba_asteroid_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])
local fulgora_asteroid_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])
local aquilo_asteroid_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])

crude_asteroid_chunk.name = "astra-crude-asteroid-chunk"
crude_asteroid_chunk.type = "asteroid-chunk"
crude_asteroid_chunk.minable = {mining_time = 0.2, result = "astra-crude-asteroid-chunk"}
crude_asteroid_chunk.order = "f"
crude_asteroid_chunk.icon = "__Astra-Asteroids__/graphics/crude_asteroid_chunk.png"
crude_asteroid_chunk.graphics_set = AstraAsteroids.GenerateAsteroidGraphicsSet("crude_asteroid_chunk.png",chunk_scale )

nauvis_asteroid_chunk.name = "astra-nauvis-asteroid-chunk"
nauvis_asteroid_chunk.type = "asteroid-chunk"
nauvis_asteroid_chunk.minable = {mining_time = 0.2, result = "astra-nauvis-asteroid-chunk"}
nauvis_asteroid_chunk.order = "f"
nauvis_asteroid_chunk.icon = "__Astra-Asteroids__/graphics/nauvis_asteroid_chunk.png"
nauvis_asteroid_chunk.graphics_set = AstraAsteroids.GenerateAsteroidGraphicsSet("nauvis_asteroid_chunk.png",chunk_scale )

vulcanus_asteroid_chunk.name = "astra-volcanic-asteroid-chunk"
vulcanus_asteroid_chunk.type = "asteroid-chunk"
vulcanus_asteroid_chunk.minable = {mining_time = 0.2, result = "astra-volcanic-asteroid-chunk"}
vulcanus_asteroid_chunk.order = "f"
vulcanus_asteroid_chunk.icon = "__Astra-Asteroids__/graphics/vulcanus_asteroid_chunk.png"
vulcanus_asteroid_chunk.graphics_set = AstraAsteroids.GenerateAsteroidGraphicsSet("vulcanus_asteroid_chunk.png",chunk_scale )

gleba_asteroid_chunk.name = "astra-gleba-asteroid-chunk"
gleba_asteroid_chunk.type = "asteroid-chunk"
gleba_asteroid_chunk.minable = {mining_time = 0.2, result = "astra-gleba-asteroid-chunk"}
gleba_asteroid_chunk.order = "f"
gleba_asteroid_chunk.icon = "__Astra-Asteroids__/graphics/gleba_asteroid_chunk.png"
gleba_asteroid_chunk.graphics_set = AstraAsteroids.GenerateAsteroidGraphicsSet("gleba_asteroid_chunk.png",chunk_scale)

fulgora_asteroid_chunk.name = "astra-fulgoran-asteroid-chunk"
fulgora_asteroid_chunk.type = "asteroid-chunk"
fulgora_asteroid_chunk.minable = {mining_time = 0.2, result = "astra-fulgoran-asteroid-chunk"}
fulgora_asteroid_chunk.order = "f"
fulgora_asteroid_chunk.icon = "__Astra-Asteroids__/graphics/fulgoran_asteroid_chunk.png"
fulgora_asteroid_chunk.graphics_set = AstraAsteroids.GenerateAsteroidGraphicsSet("fulgoran_asteroid_chunk.png",chunk_scale )

aquilo_asteroid_chunk.name = "astra-aquilo-asteroid-chunk"
aquilo_asteroid_chunk.type = "asteroid-chunk"
aquilo_asteroid_chunk.minable = {mining_time = 0.2, result = "astra-aquilo-asteroid-chunk"}
aquilo_asteroid_chunk.order = "f"
aquilo_asteroid_chunk.icon = "__Astra-Asteroids__/graphics/crude_asteroid_chunk.png"


data:extend({crude_asteroid_chunk,nauvis_asteroid_chunk,vulcanus_asteroid_chunk,gleba_asteroid_chunk,fulgora_asteroid_chunk,aquilo_asteroid_chunk})

local crude_asteroid_chunk_item = table.deepcopy(data.raw.item["metallic-asteroid-chunk"])
local nauvis_asteroid_chunk_item = table.deepcopy(data.raw.item["metallic-asteroid-chunk"])
local vulcanus_asteroid_chunk_item = table.deepcopy(data.raw.item["metallic-asteroid-chunk"])
local gleba_asteroid_chunk_item = table.deepcopy(data.raw.item["metallic-asteroid-chunk"])
local fulgora_asteroid_chunk_item = table.deepcopy(data.raw.item["metallic-asteroid-chunk"])
local aquilo_asteroid_chunk_item = table.deepcopy(data.raw.item["metallic-asteroid-chunk"])

crude_asteroid_chunk_item.name = "astra-crude-asteroid-chunk"
crude_asteroid_chunk_item.type = "item"
crude_asteroid_chunk_item.subgroup = "space-material"
crude_asteroid_chunk_item.order = "d2[crude]-e[chunk]"
crude_asteroid_chunk_item.icon = "__Astra-Asteroids__/graphics/crude_asteroid_chunk.png"
crude_asteroid_chunk_item.stack_size = 1

nauvis_asteroid_chunk_item.name = "astra-nauvis-asteroid-chunk"
nauvis_asteroid_chunk_item.type = "item"
nauvis_asteroid_chunk_item.subgroup = "space-material"
nauvis_asteroid_chunk_item.order = "f[nauvis]-e[chunk]"
nauvis_asteroid_chunk_item.icon = "__Astra-Asteroids__/graphics/nauvis_asteroid_chunk.png"
nauvis_asteroid_chunk_item.stack_size = 1

vulcanus_asteroid_chunk_item.name = "astra-volcanic-asteroid-chunk"
vulcanus_asteroid_chunk_item.type = "item"
vulcanus_asteroid_chunk_item.subgroup = "space-material"
vulcanus_asteroid_chunk_item.order = "h[vulcanus]-e[chunk]"
vulcanus_asteroid_chunk_item.icon = "__Astra-Asteroids__/graphics/vulcanus_asteroid_chunk.png"
vulcanus_asteroid_chunk_item.stack_size = 1

gleba_asteroid_chunk_item.name = "astra-gleba-asteroid-chunk"
gleba_asteroid_chunk_item.type = "item"
gleba_asteroid_chunk_item.subgroup = "space-material"
gleba_asteroid_chunk_item.order = "g[gleba]-e[chunk]"
gleba_asteroid_chunk_item.icon = "__Astra-Asteroids__/graphics/gleba_asteroid_chunk.png"
gleba_asteroid_chunk_item.stack_size = 1

fulgora_asteroid_chunk_item.name = "astra-fulgoran-asteroid-chunk"
fulgora_asteroid_chunk_item.type = "item"
fulgora_asteroid_chunk_item.subgroup = "space-material"
fulgora_asteroid_chunk_item.order = "h[fulgora]-e[chunk]"
fulgora_asteroid_chunk_item.icon = "__Astra-Asteroids__/graphics/fulgoran_asteroid_chunk.png"
fulgora_asteroid_chunk_item.stack_size = 1

aquilo_asteroid_chunk_item.name = "astra-aquilo-asteroid-chunk"
aquilo_asteroid_chunk_item.type = "item"
aquilo_asteroid_chunk_item.subgroup = "space-material"
aquilo_asteroid_chunk_item.order = "i[aquilo]-e[chunk]"
aquilo_asteroid_chunk_item.icon = "__Astra-Asteroids__/graphics/crude_asteroid_chunk.png"
aquilo_asteroid_chunk_item.stack_size = 1
aquilo_asteroid_chunk_item.graphics_set = AstraAsteroids.GenerateAsteroidGraphicsSet("crude_asteroid_chunk.png",chunk_scale )


data:extend({crude_asteroid_chunk_item,nauvis_asteroid_chunk_item,vulcanus_asteroid_chunk_item,gleba_asteroid_chunk_item,fulgora_asteroid_chunk_item,aquilo_asteroid_chunk_item})


local small_nauvis_asteroid = table.deepcopy(data.raw["asteroid"]["small-metallic-asteroid"])
local small_vulcanus_asteroid = table.deepcopy(data.raw["asteroid"]["small-metallic-asteroid"])
local small_gleba_asteroid = table.deepcopy(data.raw["asteroid"]["small-metallic-asteroid"])
local small_fulgora_asteroid = table.deepcopy(data.raw["asteroid"]["small-metallic-asteroid"])
local small_aquilo_asteroid = table.deepcopy(data.raw["asteroid"]["small-metallic-asteroid"])

small_nauvis_asteroid.name = "astra-small-nauvis-asteroid"
small_nauvis_asteroid.icon = "__Astra-Asteroids__/graphics/nauvis_asteroid_chunk.png"
small_nauvis_asteroid.icon_size = small_size
small_nauvis_asteroid.order = "e[nauvis]-a[small]"
small_nauvis_asteroid.dying_trigger_effect = AstraAsteroids.CreateAsteroidChunkDyingTrigger("astra-nauvis-asteroid-chunk")
small_nauvis_asteroid.graphics_set = AstraAsteroids.GenerateAsteroidGraphicsSet("nauvis_asteroid_chunk.png",small_scale )
small_nauvis_asteroid.factoriopedia_simulation = nil

small_vulcanus_asteroid.name = "astra-small-volcanic-asteroid"
small_vulcanus_asteroid.icon = "__Astra-Asteroids__/graphics/vulcanus_asteroid_chunk.png"
small_vulcanus_asteroid.icon_size = small_size
small_vulcanus_asteroid.order = "f[vulcanus]-a[small]"
small_vulcanus_asteroid.dying_trigger_effect = AstraAsteroids.CreateAsteroidChunkDyingTrigger("astra-volcanic-asteroid-chunk")
small_vulcanus_asteroid.graphics_set = AstraAsteroids.GenerateAsteroidGraphicsSet("vulcanus_asteroid_chunk.png",small_scale )
small_vulcanus_asteroid.factoriopedia_simulation = nil

small_gleba_asteroid.name = "astra-small-gleba-asteroid"
small_gleba_asteroid.icon = "__Astra-Asteroids__/graphics/gleba_asteroid_chunk.png"
small_gleba_asteroid.icon_size = small_size
small_gleba_asteroid.order = "g[gleba]-a[small]"
small_gleba_asteroid.dying_trigger_effect = AstraAsteroids.CreateAsteroidChunkDyingTrigger("astra-gleba-asteroid-chunk")
small_gleba_asteroid.graphics_set = AstraAsteroids.GenerateAsteroidGraphicsSet("gleba_asteroid_chunk.png",small_scale)
small_gleba_asteroid.factoriopedia_simulation = nil

small_fulgora_asteroid.name = "astra-small-fulgoran-asteroid"
small_fulgora_asteroid.icon = "__Astra-Asteroids__/graphics/fulgoran_asteroid_chunk.png"
small_fulgora_asteroid.icon_size = small_size
small_fulgora_asteroid.order = "h[fulgora]-a[small]"
small_fulgora_asteroid.dying_trigger_effect = AstraAsteroids.CreateAsteroidChunkDyingTrigger("astra-fulgoran-asteroid-chunk")
small_fulgora_asteroid.graphics_set = AstraAsteroids.GenerateAsteroidGraphicsSet("fulgoran_asteroid_chunk.png",small_scale )
small_fulgora_asteroid.factoriopedia_simulation = nil

small_aquilo_asteroid.name = "astra-small-aquilo-asteroid"
small_aquilo_asteroid.icon = "__Astra-Asteroids__/graphics/crude_asteroid_chunk.png"
small_aquilo_asteroid.icon_size = small_size
small_aquilo_asteroid.order = "i[aquilo]-a[small]"
small_aquilo_asteroid.dying_trigger_effect = AstraAsteroids.CreateAsteroidChunkDyingTrigger("astra-aquilo-asteroid-chunk")
small_aquilo_asteroid.graphics_set = AstraAsteroids.GenerateAsteroidGraphicsSet("crude_asteroid_chunk.png",small_scale )
small_aquilo_asteroid.factoriopedia_simulation = nil

data:extend({small_nauvis_asteroid,small_vulcanus_asteroid,small_gleba_asteroid,small_fulgora_asteroid,small_aquilo_asteroid})

local medium_nauvis_asteroid = table.deepcopy(data.raw["asteroid"]["medium-metallic-asteroid"])
local medium_vulcanus_asteroid = table.deepcopy(data.raw["asteroid"]["medium-metallic-asteroid"])
local medium_gleba_asteroid = table.deepcopy(data.raw["asteroid"]["medium-metallic-asteroid"])
local medium_fulgora_asteroid = table.deepcopy(data.raw["asteroid"]["medium-metallic-asteroid"])
local medium_aquilo_asteroid = table.deepcopy(data.raw["asteroid"]["medium-metallic-asteroid"])

medium_nauvis_asteroid.name = "astra-medium-nauvis-asteroid"
medium_nauvis_asteroid.icon = "__Astra-Asteroids__/graphics/nauvis_asteroid_chunk.png"
medium_nauvis_asteroid.icon_size = medium_size
medium_nauvis_asteroid.order = "e[nauvis]-b[medium]"
medium_nauvis_asteroid.dying_trigger_effect = AstraAsteroids.CreateAsteroidEntityDyingTrigger("astra-small-nauvis-asteroid")
medium_nauvis_asteroid.graphics_set = AstraAsteroids.GenerateAsteroidGraphicsSet("nauvis_asteroid_chunk.png",medium_scale )
medium_nauvis_asteroid.factoriopedia_simulation = nil

medium_vulcanus_asteroid.name = "astra-medium-volcanic-asteroid"
medium_vulcanus_asteroid.icon = "__Astra-Asteroids__/graphics/vulcanus_asteroid_chunk.png"
medium_vulcanus_asteroid.icon_size = medium_size
medium_vulcanus_asteroid.order = "f[vulcanus]-b[medium]"
medium_vulcanus_asteroid.dying_trigger_effect = AstraAsteroids.CreateAsteroidEntityDyingTrigger("astra-small-volcanic-asteroid")
medium_vulcanus_asteroid.graphics_set = AstraAsteroids.GenerateAsteroidGraphicsSet("vulcanus_asteroid_chunk.png",medium_scale)
medium_vulcanus_asteroid.factoriopedia_simulation = nil

medium_gleba_asteroid.name = "astra-medium-gleba-asteroid"
medium_gleba_asteroid.icon = "__Astra-Asteroids__/graphics/gleba_asteroid_chunk.png"
medium_gleba_asteroid.icon_size = medium_size
medium_gleba_asteroid.order = "g[gleba]-b[medium]"
medium_gleba_asteroid.dying_trigger_effect = AstraAsteroids.CreateAsteroidEntityDyingTrigger("astra-small-gleba-asteroid")
medium_gleba_asteroid.graphics_set = AstraAsteroids.GenerateAsteroidGraphicsSet("gleba_asteroid_chunk.png",medium_scale )
medium_gleba_asteroid.factoriopedia_simulation = nil

medium_fulgora_asteroid.name = "astra-medium-fulgoran-asteroid"
medium_fulgora_asteroid.icon = "__Astra-Asteroids__/graphics/fulgoran_asteroid_chunk.png"
medium_fulgora_asteroid.icon_size = medium_size
medium_fulgora_asteroid.order = "h[fulgora]-b[medium]"
medium_fulgora_asteroid.dying_trigger_effect = AstraAsteroids.CreateAsteroidEntityDyingTrigger("astra-small-fulgoran-asteroid")
medium_fulgora_asteroid.graphics_set = AstraAsteroids.GenerateAsteroidGraphicsSet("fulgoran_asteroid_chunk.png",medium_scale )
medium_fulgora_asteroid.factoriopedia_simulation = nil

medium_aquilo_asteroid.name = "astra-medium-aquilo-asteroid"
medium_aquilo_asteroid.icon = "__Astra-Asteroids__/graphics/crude_asteroid_chunk.png"
medium_aquilo_asteroid.icon_size = medium_size
medium_aquilo_asteroid.order = "i[aquilo]-b[medium]"
medium_aquilo_asteroid.dying_trigger_effect = AstraAsteroids.CreateAsteroidEntityDyingTrigger("astra-small-aquilo-asteroid")
medium_aquilo_asteroid.graphics_set = AstraAsteroids.GenerateAsteroidGraphicsSet("crude_asteroid_chunk.png",medium_scale )
medium_aquilo_asteroid.factoriopedia_simulation = nil

data:extend({medium_nauvis_asteroid,medium_vulcanus_asteroid,medium_fulgora_asteroid,medium_gleba_asteroid,medium_aquilo_asteroid})

local big_aquilo_asteroid = table.deepcopy(data.raw["asteroid"]["big-metallic-asteroid"])
big_aquilo_asteroid.name = "astra-big-aquilo-asteroid"
big_aquilo_asteroid.icon = "__Astra-Asteroids__/graphics/crude_asteroid_chunk.png"
big_aquilo_asteroid.icon_size = large_size
big_aquilo_asteroid.order = "i[aquilo]-d[big]"
big_aquilo_asteroid.dying_trigger_effect = AstraAsteroids.CreateAsteroidEntityDyingTrigger("astra-medium-aquilo-asteroid")
big_aquilo_asteroid.graphics_set = AstraAsteroids.GenerateAsteroidGraphicsSet("crude_asteroid_chunk.png",large_scale)
big_aquilo_asteroid.factoriopedia_simulation = nil

data:extend({big_aquilo_asteroid})