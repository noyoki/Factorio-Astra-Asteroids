local crude_asteroid_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])
local nauvis_asteroid_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])
local vulcanus_asteroid_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])
local gleba_asteroid_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])
local fulgora_asteroid_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])

crude_asteroid_chunk.name = "astra-crude-asteroid-chunk"
crude_asteroid_chunk.type = "asteroid-chunk"
crude_asteroid_chunk.minable = {mining_time = 0.2, result = "astra-crude-asteroid-chunk"}
crude_asteroid_chunk.order = "f"
crude_asteroid_chunk.icon = "__Astra-Asteroids__/graphics/crude_asteroid_chunk.png"

nauvis_asteroid_chunk.name = "astra-nauvis-asteroid-chunk"
nauvis_asteroid_chunk.type = "asteroid-chunk"
nauvis_asteroid_chunk.minable = {mining_time = 0.2, result = "astra-nauvis-asteroid-chunk"}
nauvis_asteroid_chunk.order = "n"
nauvis_asteroid_chunk.icon = "__Astra-Asteroids__/graphics/nauvis_asteroid_chunk.png"

vulcanus_asteroid_chunk.name = "astra-vulcanic-asteroid-chunk"
vulcanus_asteroid_chunk.type = "asteroid-chunk"
vulcanus_asteroid_chunk.minable = {mining_time = 0.2, result = "astra-volcanic-asteroid-chunk"}
vulcanus_asteroid_chunk.order = "v"
vulcanus_asteroid_chunk.icon = "__Astra-Asteroids__/graphics/vulcanus_asteroid_chunk.png"

gleba_asteroid_chunk.name = "astra-gleba-asteroid-chunk"
gleba_asteroid_chunk.type = "asteroid-chunk"
gleba_asteroid_chunk.minable = {mining_time = 0.2, result = "astra-gleba-asteroid-chunk"}
gleba_asteroid_chunk.order = "g"
gleba_asteroid_chunk.icon = "__Astra-Asteroids__/graphics/gleba_asteroid_chunk.png"

fulgora_asteroid_chunk.name = "astra-fulgoran-asteroid-chunk"
fulgora_asteroid_chunk.type = "asteroid-chunk"
fulgora_asteroid_chunk.minable = {mining_time = 0.2, result = "astra-fulgoran-asteroid-chunk"}
fulgora_asteroid_chunk.order = "f"
fulgora_asteroid_chunk.icon = "__Astra-Asteroids__/graphics/fulgoran_asteroid_chunk.png"


data:extend({crude_asteroid_chunk,nauvis_asteroid_chunk,vulcanus_asteroid_chunk,gleba_asteroid_chunk,fulgora_asteroid_chunk})

local crude_asteroid_chunk_item = table.deepcopy(data.raw.item["metallic-asteroid-chunk"])
local nauvis_asteroid_chunk_item = table.deepcopy(data.raw.item["metallic-asteroid-chunk"])
local vulcanus_asteroid_chunk_item = table.deepcopy(data.raw.item["metallic-asteroid-chunk"])
local gleba_asteroid_chunk_item = table.deepcopy(data.raw.item["metallic-asteroid-chunk"])
local fulgora_asteroid_chunk_item = table.deepcopy(data.raw.item["metallic-asteroid-chunk"])

crude_asteroid_chunk_item.name = "astra-crude-asteroid-chunk"
crude_asteroid_chunk_item.type = "item"
crude_asteroid_chunk_item.subgroup = "space-material"
crude_asteroid_chunk_item.order = "f"
crude_asteroid_chunk_item.icon = "__Astra-Asteroids__/graphics/crude_asteroid_chunk.png"
crude_asteroid_chunk_item.stack_size = 1

nauvis_asteroid_chunk_item.name = "astra-nauvis-asteroid-chunk"
nauvis_asteroid_chunk_item.type = "item"
nauvis_asteroid_chunk_item.subgroup = "space-material"
nauvis_asteroid_chunk_item.order = "f"
nauvis_asteroid_chunk_item.icon = "__Astra-Asteroids__/graphics/nauvis_asteroid_chunk.png"
nauvis_asteroid_chunk_item.stack_size = 1

vulcanus_asteroid_chunk_item.name = "astra-vulcanic-asteroid-chunk"
vulcanus_asteroid_chunk_item.type = "item"
vulcanus_asteroid_chunk_item.subgroup = "space-material"
vulcanus_asteroid_chunk_item.order = "v"
vulcanus_asteroid_chunk_item.icon = "__Astra-Asteroids__/graphics/vulcanus_asteroid_chunk.png"
vulcanus_asteroid_chunk_item.stack_size = 1

gleba_asteroid_chunk_item.name = "astra-gleba-asteroid-chunk"
gleba_asteroid_chunk_item.type = "item"
gleba_asteroid_chunk_item.subgroup = "space-material"
gleba_asteroid_chunk_item.order = "g"
gleba_asteroid_chunk_item.icon = "__Astra-Asteroids__/graphics/gleba_asteroid_chunk.png"
gleba_asteroid_chunk_item.stack_size = 1

fulgora_asteroid_chunk_item.name = "astra-fulgoran-asteroid-chunk"
fulgora_asteroid_chunk_item.type = "item"
fulgora_asteroid_chunk_item.subgroup = "space-material"
fulgora_asteroid_chunk_item.order = "f"
fulgora_asteroid_chunk_item.icon = "__Astra-Asteroids__/graphics/fulgoran_asteroid_chunk.png"
fulgora_asteroid_chunk_item.stack_size = 1


data:extend({crude_asteroid_chunk_item,nauvis_asteroid_chunk_item,vulcanus_asteroid_chunk_item,gleba_asteroid_chunk_item,fulgora_asteroid_chunk_item})


local medium_nauvis_asteroid = table.deepcopy(data.raw["asteroid"]["medium-metallic-asteroid"])
local medium_vulcanus_asteroid = table.deepcopy(data.raw["asteroid"]["medium-metallic-asteroid"])
local medium_gleba_asteroid = table.deepcopy(data.raw["asteroid"]["medium-metallic-asteroid"])
local medium_fulgora_asteroid = table.deepcopy(data.raw["asteroid"]["medium-metallic-asteroid"])

medium_nauvis_asteroid.name = "astra-medium-nauvis-asteroid"
medium_nauvis_asteroid.icon = "__Astra-Asteroids__/graphics/crude_asteroid_chunk.png"
medium_nauvis_asteroid.dying_trigger_effect = 
	{
		type = "create-asteroid-chunk",
		asteroid_name = "astra-nauvis-asteroid-chunk",
		offset_deviation = {{-2, -2}, {2, 2}},
		repeat_count=3,
		offsets =
		{
			{-2, -2/4},
			{0, -2/2},
			{2, -2/4}
		},
  	}

medium_vulcanus_asteroid.name = "astra-medium-vulcanic-asteroid"
medium_vulcanus_asteroid.icon = "__Astra-Asteroids__/graphics/crude_asteroid_chunk.png"
medium_vulcanus_asteroid.dying_trigger_effect = 
	{
		type = "create-asteroid-chunk",
		asteroid_name = "astra-vulanic-asteroid-chunk",
		offset_deviation = {{-2, -2}, {2, 2}},
		repeat_count=3,
		offsets =
		{
			{-2, -2/4},
			{0, -2/2},
			{2, -2/4}
		},
  	}


medium_gleba_asteroid.name = "astra-medium-gleba-asteroid"
medium_gleba_asteroid.icon = "__Astra-Asteroids__/graphics/crude_asteroid_chunk.png"
medium_gleba_asteroid.dying_trigger_effect = 
	{
		type = "create-asteroid-chunk",
		asteroid_name = "astra-gleba-asteroid-chunk",
		offset_deviation = {{-2, -2}, {2, 2}},
		repeat_count=3,
		offsets =
		{
			{-2, -2/4},
			{0, -2/2},
			{2, -2/4}
		},
  	}

medium_fulgora_asteroid.name = "astra-medium-nauvis-asteroid"
medium_fulgora_asteroid.icon = "__Astra-Asteroids__/graphics/crude_asteroid_chunk.png"
medium_fulgora_asteroid.dying_trigger_effect = 
	{
		type = "create-asteroid-chunk",
		asteroid_name = "astra-fulgora-asteroid-chunk",
		offset_deviation = {{-2, -2}, {2, 2}},
		repeat_count=3,
		offsets =
		{
			{-2, -2/4},
			{0, -2/2},
			{2, -2/4}
		},
  	}


data:extend({medium_nauvis_asteroid,medium_vulcanus_asteroid,medium_gleba_asteroid,medium_fulgora_asteroid})