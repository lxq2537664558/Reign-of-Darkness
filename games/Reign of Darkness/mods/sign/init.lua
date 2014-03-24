--This mod is WTFPL

print("[Sign] v1.0")

--Node Registering

minetest.register_node("sign:radioactive", {
	description = "Radiation Danger Sign",
	drawtype = "signlike",
	tiles = { "radioactive.png" },
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
})
	
minetest.register_node("sign:biohazard", {
	description = "BioHazard Danger Sign",
	drawtype = "signlike",
	tiles = { "biohazard.png" },
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
})
	
minetest.register_node("sign:corrosive", {
    description = "Corrosive Substances Sign",
	drawtype = "signlike",
    tiles = { "corrosive.png" },
 	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
})

minetest.register_node("sign:irritant", {
    description = "Irritants Sign",
	drawtype = "signlike",
    tiles = { "irritant.png" },
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
})
	
minetest.register_node("sign:oxidiser", {
    description = "Oxidising Substances Sign",
	drawtype = "signlike",
    tiles = { "oxidiser.png" },
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
})
	
minetest.register_node("sign:toxic", {
    description = "Toxic Substances Sign",
	drawtype = "signlike",
    tiles = { "toxic.png" },
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
})
	
minetest.register_node("sign:mineshaft", {
    description = "Mineshaft Warning Sign",
	drawtype = "signlike",
    tiles = { "mineshaft.png" },
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
})
	
minetest.register_node("sign:waterobstructions", {
    description = "Underwater Obstructions Sign",
	drawtype = "signlike",
    tiles = { "waterobstructions.png" },
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
})
	
minetest.register_node("sign:flammable", {
    description = "Flammable Substances Sign",
    tiles = { "flammable.png" },
    drawtype = "signlike",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
})
	
minetest.register_node("sign:electricity", {
    description = "Electricity Warning Sign",
    tiles = { "electricity.png" },
    drawtype = "signlike",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
})
	
minetest.register_node("sign:falling", {
    description = "Falling Danger Sign",
    tiles = { "falling.png" },
    drawtype = "signlike",
		paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
})
	
minetest.register_node("sign:mines", {
    description = "Mines Danger Sign",
    tiles = { "mines.png" },
    drawtype = "signlike",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
})
	
minetest.register_node("sign:noentry", {
    description = "No Entry Sign",
    tiles = { "noentry.png" },
    drawtype = "signlike",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
})

minetest.register_node("sign:heat", {
	description = "Heat Danger Sign",
	drawtype = "signlike",
	tiles = { "heat.png" },
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
})

minetest.register_node("sign:machinery", {
	description = "Machinery Danger Sign",
	drawtype = "signlike",
	tiles = { "machinery.png" },
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
})

minetest.register_node("sign:noise", {
	description = "Loud Noise Sign",
	drawtype = "signlike",
	tiles = { "noise.png" },
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
})

minetest.register_node("sign:carcinogen", {
	description = "Carcinogen Danger Sign",
	drawtype = "signlike",
	tiles = { "carcinogen.png" },
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
})

minetest.register_node("sign:fallobject", {
	description = "Falling Objects Danger Sign",
	drawtype = "signlike",
	tiles = { "fallobject.png" },
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
})

minetest.register_node("sign:gas", {
	description = "Compressed Gas Danger Sign",
	drawtype = "signlike",
	tiles = { "gas.png" },
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
})

minetest.register_node("sign:slipfloor", {
	description = "Slippery Floor Sign",
	drawtype = "signlike",
	tiles = { "slipfloor.png" },
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
})


	
	
--Crafting


minetest.register_craft({
	output = 'sign:radioactive',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
		{'', 'default:steel_ingot', ''},
	}
})
	
minetest.register_craft({
	output = 'sign:biohazard',
	recipe = {
		{'', '', ''},
		{'', 'sign:radioactive', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'sign:corrosive',
	recipe = {
		{'', '', ''},
		{'', 'sign:biohazard', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'sign:irritant',
	recipe = {
		{'', '', ''},
		{'', 'sign:corrosive', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'sign:oxidiser',
	recipe = {
		{'', '', ''},
		{'', 'sign:irritant', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'sign:toxic',
	recipe = {
		{'', '', ''},
		{'', 'sign:oxidiser', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'sign:deadend',
	recipe = {
		{'', '', ''},
		{'', 'sign:toxic', ''},
		{'', '', ''},
	}
})


minetest.register_craft({
	output = 'sign:mineshaft',
	recipe = {
		{'', '', ''},
		{'', 'sign:train', ''},
		{'', '', ''},
	}
})
	
minetest.register_craft({
	output = 'sign:waterobstructions',
	recipe = {
		{'', '', ''},
		{'', 'sign:deepwater', ''},
		{'', '', ''},
	}
})
	
minetest.register_craft({
	output = 'sign:flammable',
	recipe = {
		{'', '', ''},
		{'', 'sign:waterobstructions', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'sign:electricity',
	recipe = {
		{'', '', ''},
		{'', 'sign:flammable', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'sign:falling',
	recipe = {
		{'', '', ''},
		{'', 'sign:electricity', ''},
		{'', '', ''},
	}
})
	
minetest.register_craft({
	output = 'sign:mines',
	recipe = {
		{'', '', ''},
		{'', 'sign:falling', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'sign:noentry',
	recipe = {
		{'', '', ''},
		{'', 'sign:mines', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'sign:heat',
	recipe = {
		{'', '', ''},
		{'', 'sign:noentry', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'sign:machinery',
	recipe = {
		{'', '', ''},
		{'', 'sign:heat', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'sign:noise',
	recipe = {
		{'', '', ''},
		{'', 'sign:machinery', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'sign:carcinogen',
	recipe = {
		{'', '', ''},
		{'', 'sign:noise', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'sign:fallobject',
	recipe = {
		{'', '', ''},
		{'', 'sign:carcinogen', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'sign:gas',
	recipe = {
		{'', '', ''},
		{'', 'sign:fallobject', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'sign:slipfloor',
	recipe = {
		{'', '', ''},
		{'', 'sign:gas', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'sign:radioactive',
	recipe = {
		{'', '', ''},
		{'', 'sign:slipfloor', ''},
		{'', '', ''},
	}
})
