

if settings.startup["include-crude-asteroid"].value == true then

local planet = data.raw.planet["nauvis"]
planet.asteroid_spawn_definitions = {
    {
        asteroid = "metallic-asteroid-chunk",
        probability = 0.1,
        speed = 0.1,
        angle_when_stopped = 0.25,
        type = "asteroid-chunk"
    },
    {
        asteroid = "carbonic-asteroid-chunk",
        probability = 0.05,
        speed = 0.05,
        angle_when_stopped = 0.25,
        type = "asteroid-chunk"
    },
    {
        asteroid = "oxide-asteroid-chunk",
        probability = 0.05,
        speed = 0.05,
        angle_when_stopped = 0.25,
        type = "asteroid-chunk"
    },
    {
        asteroid = "crude_asteroid_chunk",
        probability = 0.05,
        speed = 0.05,
        angle_when_stopped = 0.25,
        type = "asteroid-chunk"
    }
}

end