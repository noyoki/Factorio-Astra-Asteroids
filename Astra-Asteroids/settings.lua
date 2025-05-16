if mods["any-planet-start"] then
    APS.add_choice("shattered-tanker")
end


data:extend ({
	{	
		name = "include-crude-asteroid",
		setting_type = "startup",
		type = "bool-setting",
		default_value = true,
		order ="0"
	}
})
