


local n = data.raw.planet["nauvis"]
n.asteroid_spawn_definitions = AstraAsteroids.GetCombinationsForPlanet("nauvis")

local nv = data.raw["space-connection"]["nauvis-vulcanus"]
nv.asteroid_spawn_definitions = AstraAsteroids.GetCombinationsForSpaceRoute("nauvis","vulcanus")

local ng = data.raw["space-connection"]["nauvis-gleba"]
ng.asteroid_spawn_definitions = AstraAsteroids.GetCombinationsForSpaceRoute("nauvis","gleba")

local nf = data.raw["space-connection"]["nauvis-fulgora"]
nf.asteroid_spawn_definitions = AstraAsteroids.GetCombinationsForSpaceRoute("nauvis","fulgora")

local v = data.raw.planet["vulcanus"]
v.asteroid_spawn_definitions =AstraAsteroids.GetCombinationsForPlanet("vulcanus")

local vg = data.raw["space-connection"]["vulcanus-gleba"]
vg.asteroid_spawn_definitions = AstraAsteroids.GetCombinationsForSpaceRoute("vulcanus","gleba")

local g = data.raw.planet["gleba"]
g.asteroid_spawn_definitions = AstraAsteroids.GetCombinationsForPlanet("gleba")

local gf =  data.raw["space-connection"]["gleba-fulgora"]
gf.asteroid_spawn_definitions = AstraAsteroids.GetCombinationsForSpaceRoute("gleba","fulgora")

local ga =  data.raw["space-connection"]["gleba-aquilo"]
ga.asteroid_spawn_definitions = AstraAsteroids.GetCombinationsForSpaceRoute("gleba","aquilo")

local f = data.raw.planet["fulgora"]
f.asteroid_spawn_definitions = AstraAsteroids.GetCombinationsForPlanet("fulgora")

local fa =  data.raw["space-connection"]["fulgora-aquilo"]
fa.asteroid_spawn_definitions = AstraAsteroids.GetCombinationsForSpaceRoute("fulgora","aquilo")

local a = data.raw.planet["aquilo"]
a.asteroid_spawn_definitions = AstraAsteroids.GetCombinationsForPlanet("aquilo")

local ae =  data.raw["space-connection"]["aquilo-solar-system-edge"]
ae.asteroid_spawn_definitions = AstraAsteroids.GetCombinationsForSpaceRoute("aquilo","system_edge")

local sse = data.raw["space-location"]["solar-system-edge"]
sse.asteroid_spawn_definitions = AstraAsteroids.GetCombinationsForPlanet("system_edge")