AstraAsteroids = {}
local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")
local stardardspeed = asteroid_util.standard_speed




AstraAsteroids.CreateAsteroidEntityDyingTrigger = function(child_asteroid_name)
    local trigger = {
		type = "create-entity",
        entity_name = child_asteroid_name,
		offset_deviation = {{-2, -2}, {2, 2}},
		offsets =
		{
			{-2, -2/4},
			{0, -2/2},
			{2, -2/4}
		}
    }
    return trigger
end


AstraAsteroids.CreateAsteroidChunkDyingTrigger = function(child_asteroid_name)
    local trigger = {
		type = "create-asteroid-chunk",
		asteroid_name = child_asteroid_name,
		offset_deviation = {{-2, -2}, {2, 2}},
		offsets =
		{
			{-2, 2/4},
			{2, -2/4}
		}
    }
    return trigger
end

AstraAsteroids.GenerateAsteroidGraphicsSet = function(image_png, scale)
    local color_texture_sprite = {
        filename = "__Astra-Asteroids__/graphics/"..image_png,
        size = 64,
        scale = scale,
        premul_alpha = false,
        apply_special_effect = true
    }
    local normal_texture_sprite = {
        filename = "__Astra-Asteroids__/graphics/flat_n.png",
        size = 64,
        scale = scale
    }
    local roughness_texture_sprite = {
        filename = "__Astra-Asteroids__/graphics/flat_r.png",
        size = 64,
        scale = scale
    }


    local g_set = { rotation_speed = .005, 
                    ambient_light =  {.5,.5,.5},
                    normal_strength = 0,
                    brightness = .6,
                    specular_strength  = 0,
                    lights = { color = {1,1,1,1}, direction = {0,0,-1} },
                    variations = {color_texture = color_texture_sprite, normal_map = normal_texture_sprite, roughness_map = roughness_texture_sprite},
            }
    return g_set
end


--[[  These are gospel values from the base SpaceAge.
chunk_angle = 1
small_angle = 0.7
medium_angle = 0.6
big_angle = 0.5
huge_angle = 0.4

metallic, carbonic, oxide, promethium
nauvis_ratio      = {3, 2, 1 , 0}
vulcanus_ratio    = {5, 2, 1 , 0}
gleba_ratio       = {2, 5, 1 , 0}
fulgora_ratio     = {4, 3, 1 , 0}
aquilo_ratio      = {1, 2, 20, 0}
system_edge_ratio = {3, 5, 2 , 0} 

--chunk,small,medium,big,huge
nauvis_sizes      = {.0125, 0,  0,      0,    0}
vulcanus_sizes    = {.0020, 0,  .0025,   0,    0}
gleba_sizes       = {.0030, 0,  .0025,   0,    0}
fulgora_sizes     = {.0025, 0,  .0025,   0,    0}
aquilo_sizes      = {.0010, 0,  0,      .0025,  0}
system_edge_sizes = {.0005, 0,  0,      0,    .00125}

carbonic chunks on nauvis formula is --> 2(nauviscarbonic) * .0125(nauvischunk) / 3 (highest of any type on nauvis(metallic)) = .0083  (or 30/minute)

-- this is the exact same as above, after the spaceage "normailization" the base game uses
nauvis_ratio      = {1,   .66, .33, 0,
vulcanus_ratio    = {1,   .4,  .2,  0,
gleba_ratio       = {.4,   1,  .2,  0,
fulgora_ratio     = {1,   .75, .25, 0,
aquilo_ratio      = {.05, .1,  1,   0,
system_edge_ratio = {.6,  1,   .4,  0,

--multiply that ratio * the chunk value of converting high asteroids down to chunks and you get a planetary difficulty...
nauvis      =2      * .0125 =   .025  
vulcanus    =1.6    * .017  =   .0272 
gleba       =1.6    * .017  =   .0272 
fulgora     =2      * .0175 =   .035  
aquilo      =1.15   * .046  =   .0529 
system_edge =2      * .068  =   .136  

for vulcanus - base game is ~ 14.4 mediums a minute.  
modded variant - ~ 72/min

--new/modded values
nauvis      = 20    *   .01   =   .2
vulcanus    = 20    *   .01   =   .2
gleba       = 20    *   .01   =   .2
fulgora     = 20    *   .01   =   .2
aquilo      = 20    *   .01   =   .2
system_edge = 20    *   .0226  =   .452

]]
--metallic, carbonic, oxide, promethium, nauvis, vulcanus, gleba, fulgora, aquilo, crude
local nauvis_ratio      = {6,  4,  3,  0, 7, 0, 0, 0, 0, 7}
local vulcanus_ratio    = {7,  3,  3,  0, 0, 7, 0, 0, 0, 0}
local gleba_ratio       = {3,  7,  3,  0, 0, 0, 7, 0, 0, 0}
local fulgora_ratio     = {6,  5,  2,  0, 0, 0, 0, 7, 0, 0}
local aquilo_ratio      = {3,  3,  7,  0, 0, 0, 0, 0, 7, 0}
local system_edge_ratio = {6,  10, 4,  0, 0, 0, 0, 0, 0, 0}



--chunk,small,medium,big,huge
local nauvis_sizes      = {.01,   0,   0,     0,     0}
local vulcanus_sizes    = {.004,  0,  .001,   0,     0}
local gleba_sizes       = {.004,  0,  .001,   0,     0}
local fulgora_sizes     = {.004,  0,  .001,   0,     0}
local aquilo_sizes      = {.001,  0,  0,      .0005, 0}
local system_edge_sizes = {.001,  0,  0,      0,    .0003}
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

AstraAsteroids.GenerateAsteroidSpawnDefinitions = function(ratios, sizes)
    local rocks = {}
    local typenames = {"metallic-", "carbonic-", "oxide-", "promethium-", "astra-nauvis-", "astra-volcanic-", "astra-gleba-", "astra-fulgoran-", "astra-aquilo-", "astra-crude-"}
    local sizenames = {"chunk","small-","medium-","big-","huge-"}
    for i, type in ipairs(ratios) do
        for x, size in ipairs(sizes) do
            local asteroid_name 
            local asteroid_type = typenames[i]
            local type_ratio = type
            local size_ratio = size
            local actual_ratio = type_ratio * size_ratio
            local angle = angles[x]
            local typename = "entity"
            if (x==1) then
                asteroid_name = asteroid_type.."asteroid-chunk"
                typename = "asteroid-chunk"
            else
                if (string.find(asteroid_type,"astra")) then
                     local asteroid_partial_name = string.sub(asteroid_type,7)
                     asteroid_name = "astra-"..sizenames[x]..asteroid_partial_name.."asteroid"
                else
                    asteroid_name = sizenames[x]..asteroid_type.."asteroid"   
                end
                
            end

            if string.find(asteroid_name,"crude") and not settings.startup["astra-include-crude-asteroid"].value == true then
                actual_ratio = 0
            end
        
            if (actual_ratio) >0 then
                log(asteroid_name..actual_ratio)
                actual_ratio = actual_ratio * overall_asteroid_spawning_multiplier
                local asteroiddef = {asteroid = asteroid_name, probability = actual_ratio, type = typename, speed = stardardspeed, angle_when_stopped = angle}
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
                local fromspawn = {distance = .1, probability = fromdef.probability *1, speed = fromdef.speed, angle_when_stopped = fromdef.angle_when_stopped}
                local halfspawn = {distance = .5, probability = fromdef.probability *.7 + todef.probability *.7 , speed = fromdef.speed, angle_when_stopped = fromdef.angle_when_stopped}
                local tospawn = {distance = .9, probability = todef.probability *1, speed = todef.speed, angle_when_stopped = todef.angle_when_stopped}
                local routedef = {type = type, asteroid = asteroid, spawn_points = {fromspawn, halfspawn, tospawn}}
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
            local fromspawn = {distance = .1, probability = fromdef.probability *1, speed = fromdef.speed, angle_when_stopped = fromdef.angle_when_stopped}
            local tospawn = {distance = .9, probability = fromdef.probability *.1, speed = fromdef.speed, angle_when_stopped = fromdef.angle_when_stopped}
            local routedef = {type = type, asteroid = asteroid, spawn_points =  {fromspawn, tospawn}}
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
            local fromspawn = {distance = .9, probability = todef.probability *1, speed = todef.speed, angle_when_stopped = todef.angle_when_stopped}
            local tospawn = {distance = .1, probability = todef.probability *.1, speed = todef.speed, angle_when_stopped = todef.angle_when_stopped}
            local routedef = {type = type, asteroid = asteroid, spawn_points =  {tospawn, fromspawn}}
            table.insert(rocks, routedef)           
        end
    end
    return rocks
end
