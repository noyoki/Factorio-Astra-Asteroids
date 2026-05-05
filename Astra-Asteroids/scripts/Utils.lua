AstraAsteroids = {}
local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")
local stardardspeed = asteroid_util.standard_speed

--[[  These are gospel values from the base SpaceAge.
metallic, carbonic, oxide, promethium
nauvis_ratio      = {3, 2, 1 , 0}
vulcanus_ratio    = {5, 2, 1 , 0}
gleba_ratio       = {2, 5, 1 , 0}
fulgora_ratio     = {4, 3, 1 , 0}
aquilo_ratio      = {1, 2, 20, 0}
system_edge_ratio = {3, 5, 2 , 0} 
nauvis_chunks      = 0.0125
vulcanus_chunks    = 0.0020
vulcanus_medium    = 0.0025
gleba_chunks       = 0.0030
gleba_medium       = 0.0025
fulgora_chunks     = 0.0025
fulgora_medium     = 0.0025
aquilo_chunks      = 0.0010
aquilo_big         = 0.0025
system_edge_chunks = 0.0005
system_edge_huge   = 0.00125
local chunk_angle = 1
local small_angle = 0.7
local medium_angle = 0.6
local big_angle = 0.5
local huge_angle = 0.4
]]
--metallic, carbonic, oxide, promethium, nauvis, vulcanus, gleba, fulgora, aquilo, crude
local nauvis_ratio      = {12, 8,  4,  0, 6, 0, 0, 0, 0, 6}
local vulcanus_ratio    = {15, 6,  3,  0, 0, 6, 0, 0, 0, 0}
local gleba_ratio       = {6,  15, 3,  0, 0, 0, 6, 0, 0, 0}
local fulgora_ratio     = {12, 9,  3,  0, 0, 0, 0, 6, 0, 0}
local aquilo_ratio      = {2,  2,  20, 0, 0, 0, 0, 0, 6, 0}
local system_edge_ratio = {6,  10, 4,  0, 0, 0, 0, 0, 0, 0}
--chunk,small,medium,big,huge
local nauvis_sizes      = {.0125, 0,  0,      0,    0}
local vulcanus_sizes    = {.0020, 0,  .002,   0,    0}
local gleba_sizes       = {.0030, 0,  .002,   0,    0}
local fulgora_sizes     = {.0025, 0,  .002,   0,    0}
local aquilo_sizes      = {.0010, 0,  0,      002,  0}
local system_edge_sizes = {.0005, 0,  0,      0,    .001}
local angles = {1,.7,.6,.5,.4}

local overall_asteroid_spawning_multiplier = 1

AstraAsteroids.GetValuesForPlanet = function(planet)
    if planet == "nauvis" then
        return nauvis_ratio, nauvis_sizes
    elseif planet == "vulcanus" then
        return vulcanus_ratio,vulcanus_sizes
    elseif planet == "gleba" then
        return gleba_ratio,gleba_sizes
    elseif planet == "fulgora" then
        return fulgora_ratio,fulgora_sizes
    elseif planet == "aquilo" then
        return aquilo_ratio,aquilo_sizes
    elseif planet == "system_edge" then
        return system_edge_ratio,system_edge_sizes
    else
        return {0,0,0,0,0,0,0,0,0,0}, {0,0,0,0,0}
    end
end

AstraAsteroids.GetCombinationsForPlanet = function(planet)   
    local ratio,sizes = AstraAsteroids.GetValuesForPlanet(planet)
    return AstraAsteroids.GenerateAsteroidSpawnDefinitions(ratio,sizes)
end

AstraAsteroids.GetCombinationsForSpaceRoute = function(planetfrom, planetto)   
    local defsfrom = AstraAsteroids.GetCombinationsForPlanet(planetfrom)
    local defsto = AstraAsteroids.GetCombinationsForPlanet(planetto)    
    return AstraAsteroids.GenerateAsteroidSpawnDefinitionsForRoute(defsfrom,defsto)
end

AstraAsteroids.GenerateAsteroidSpawnDefinitions = function(ratio, sizes)
    local rocks = {}
    local typenames = {"metallic-", "carbonic-", "oxide-", "promethium-", "astra-nauvis-", "astra-vulcanus-", "astra-gleba-", "astra-fulgora-", "astra-aquilo-", "astra-crude-"}
    local sizenames = {"chunk","small-","medium-","big-","huge-"}
    for ixtype = 1, #ratio do
        for ixsize = 1, #sizes do
            local asteroid_name 
            local asteroid_ratio = ratio[ixsize]
            local angle = angles[ixsize]
            local typename = "entity"
            if (ixsize==1) then
                asteroid_name = typenames[ixtype].."asteroid-chunk"
                typename = "asteroid-chunk"
            else
                asteroid_name = sizenames[ixsize]..typenames[ixtype].."asteroid"   
            end

            if string.find(asteroid_name,"crude") and not settings.startup["astra-include-crude-asteroid"].value == true then
                asteroid_ratio = 0
            end

            if (asteroid_ratio) >0 then
                asteroid_ratio = asteroid_ratio * overall_asteroid_spawning_multiplier
                local asteroiddef = {asteroid = asteroid_name, probability = asteroid_ratio, type = typename, speed = stardardspeed, angle_when_stopped = angle}
                table.insert(rocks, asteroiddef)
            end

        end --sizes
    end --ratio  
    return rocks
end    

AstraAsteroids.GenerateAsteroidSpawnDefinitionsForRoute = function(defsfrom, defsto)
    --if they both have the same asteroid, then we use those ratios for 90% markers and half of each @ 50%
    --else, use one for 90/10 markers.
    local rocks = {}

    for ixfrom = 1, #defsfrom do
        local fromdef = defsfrom[ixfrom]
        local fromasteroid = fromdef.asteroid
        for ixto = 1, #defsto do
            local todef = defsto[ixto]
            local toasteroid = todef.asteroid
            --if they match
            if fromasteroid == toasteroid then
                local type = fromdef.type
                local asteroid = fromdef.asteroid
                local fromspawn = {distance = .1, probability = fromdef.probability *.9, speed = fromdef.speed, angle_when_stopped = fromdef.angle_when_stopped}
                local halfspawn = {distance = .5, probability = fromdef.probability *.5 + todef.probability *.5 , speed = fromdef.speed, angle_when_stopped = fromdef.angle_when_stopped}
                local tospawn = {distance = .9, probability = todef.probability *.9, speed = todef.speed, angle_when_stopped = todef.angle_when_stopped}
                local routedef = {type, asteroid, {fromspawn, halfspawn, tospawn}}
                table.insert(rocks, routedef)
            end
        end
    end

    for ixfrom = 1, #defsfrom do
        local fromdef = defsfrom[ixfrom]
        local fromasteroid = fromdef.asteroid
        local match = false
        for ixto = 1, #defsto do
            local toasteroid = defsto[ixto].asteroid
            if fromasteroid == toasteroid then
                match = true
            end
        end
        if match == false then
            local type = fromdef.type
            local asteroid = fromdef.asteroid
            local fromspawn = {distance = .1, probability = fromdef.probability *.9, speed = fromdef.speed, angle_when_stopped = fromdef.angle_when_stopped}
            local tospawn = {distance = .9, probability = fromdef.probability *.1, speed = fromdef.speed, angle_when_stopped = fromdef.angle_when_stopped}
            local routedef = {type, asteroid, {fromspawn, tospawn}}
            table.insert(rocks, routedef)           
        end
    end

    for ixto = 1, #defsto do
        local todef = defsto[ixto]
        local toasteroid = todef.asteroid
        local match = false
        for ixfrom = 1, #defsfrom do
            local fromasteroid = defsfrom[ixfrom].asteroid
            if fromasteroid == toasteroid then
                match = true
            end
        end
        if match == false then
            local type = todef.type
            local asteroid = todef.asteroid
            local fromspawn = {distance = .9, probability = todef.probability *.9, speed = todef.speed, angle_when_stopped = todef.angle_when_stopped}
            local tospawn = {distance = .1, probability = todef.probability *.1, speed = todef.speed, angle_when_stopped = todef.angle_when_stopped}
            local routedef = {type, asteroid, {fromspawn, tospawn}}
            table.insert(rocks, routedef)           
        end
    end
    return rocks
end
