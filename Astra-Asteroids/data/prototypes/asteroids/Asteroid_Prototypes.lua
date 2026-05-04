local crude_asteroid_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])
local nauvis_asteroid_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])
local vulcanus_asteroid_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])
local gleba_asteroid_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])
local fulgora_asteroid_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])

crude_asteroid_chunk.name = "crude-asteroid-chunk"
crude_asteroid_chunk.type = "asteroid-chunk"
crude_asteroid_chunk.minable = {mining_time = 0.2, result = "crude_asteroid_chunk_item"}
crude_asteroid_chunk.order = "f"
crude_asteroid_chunk.icon = "__Astra-Asteroids__/graphics/crude_asteroid_chunk.png"

nauvis_asteroid_chunk.name = "nauvis-asteroid-chunk"
nauvis_asteroid_chunk.type = "asteroid-chunk"
nauvis_asteroid_chunk.minable = {mining_time = 0.2, result = "nauvis_asteroid_chunk_item"}
nauvis_asteroid_chunk.order = "n"
nauvis_asteroid_chunk.icon = "__Astra-Asteroids__/graphics/nauvis_asteroid_chunk.png"

vulcanus_asteroid_chunk.name = "vulcanic-asteroid-chunk"
vulcanus_asteroid_chunk.type = "asteroid-chunk"
vulcanus_asteroid_chunk.minable = {mining_time = 0.2, result = "volcanic_asteroid_chunk_item"}
vulcanus_asteroid_chunk.order = "v"
vulcanus_asteroid_chunk.icon = "__Astra-Asteroids__/graphics/vulcanus_asteroid_chunk.png"

gleba_asteroid_chunk.name = "gleba-asteroid-chunk"
gleba_asteroid_chunk.type = "asteroid-chunk"
gleba_asteroid_chunk.minable = {mining_time = 0.2, result = "gleba-asteroid-chunk-item"}
gleba_asteroid_chunk.order = "g"
gleba_asteroid_chunk.icon = "__Astra-Asteroids__/graphics/gleba_asteroid_chunk.png"

fulgora_asteroid_chunk.name = "fulgoran-asteroid-chunk"
fulgora_asteroid_chunk.type = "asteroid-chunk"
fulgora_asteroid_chunk.minable = {mining_time = 0.2, result = "fulgoran-asteroid-chunk-item"}
fulgora_asteroid_chunk.order = "f"
fulgora_asteroid_chunk.icon = "__Astra-Asteroids__/graphics/fulgoran_asteroid_chunk.png"




local crude_asteroid_chunk_item = table.deepcopy(data.raw.item["metallic-asteroid-chunk"])
local nauvis_asteroid_chunk_item = table.deepcopy(data.raw.item["metallic-asteroid-chunk"])
local vulcanus_asteroid_chunk_item = table.deepcopy(data.raw.item["metallic-asteroid-chunk"])
local gleba_asteroid_chunk_item = table.deepcopy(data.raw.item["metallic-asteroid-chunk"])
local fulgora_asteroid_chunk_item = table.deepcopy(data.raw.item["metallic-asteroid-chunk"])

crude_asteroid_chunk_item.name = "crude-asteroid-chunk-item"
crude_asteroid_chunk_item.type = "item"
crude_asteroid_chunk_item.subgroup = "space-material"
crude_asteroid_chunk_item.order = "f"
crude_asteroid_chunk_item.icon = "__Astra-Asteroids__/graphics/crude_asteroid_chunk.png"
crude_asteroid_chunk_item.stack_size = 1

nauvis_asteroid_chunk_item.name = "nauvis-asteroid-chunk-item"
nauvis_asteroid_chunk_item.type = "item"
nauvis_asteroid_chunk_item.subgroup = "space-material"
nauvis_asteroid_chunk_item.order = "f"
nauvis_asteroid_chunk_item.icon = "__Astra-Asteroids__/graphics/nauvis_asteroid_chunk.png"
nauvis_asteroid_chunk_item.stack_size = 1

vulcanus_asteroid_chunk_item.name = "vulcanic-asteroid-chunk-item"
vulcanus_asteroid_chunk_item.type = "item"
vulcanus_asteroid_chunk_item.subgroup = "space-material"
vulcanus_asteroid_chunk_item.order = "v"
vulcanus_asteroid_chunk_item.icon = "__Astra-Asteroids__/graphics/vulcanus_asteroid_chunk.png"
vulcanus_asteroid_chunk_item.stack_size = 1

gleba_asteroid_chunk_item.name = "gleba-asteroid-chunk-item"
gleba_asteroid_chunk_item.type = "item"
gleba_asteroid_chunk_item.subgroup = "space-material"
gleba_asteroid_chunk_item.order = "g"
gleba_asteroid_chunk_item.icon = "__Astra-Asteroids__/graphics/gleba_asteroid_chunk.png"
gleba_asteroid_chunk_item.stack_size = 1

fulgora_asteroid_chunk_item.name = "fulgoran-asteroid-chunk-item"
fulgora_asteroid_chunk_item.type = "item"
fulgora_asteroid_chunk_item.subgroup = "space-material"
fulgora_asteroid_chunk_item.order = "f"
fulgora_asteroid_chunk_item.icon = "__Astra-Asteroids__/graphics/fulgoran_asteroid_chunk.png"
fulgora_asteroid_chunk_item.stack_size = 1