local FLOWING_WATER_SOUND = true
local LAVA_SOUND = true
local LAVA_PARTICLE = true
local CACTUS_HURT_SOUND = true
local SLIPPERY_ICE = false  --experimental and default disabled

if FLOWING_WATER_SOUND then
minetest.register_abm({
	nodenames = {"default:water_flowing"},
	--neighbors = {"default:dirt_with_grass", "landscape:full_grass_block"},
	interval = 1.8,
	chance = 1.5,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.sound_play("dplus_water", {pos = pos, gain = 0.025, max_hear_distance = 2})
	end})

end

if LAVA_SOUND or LAVA_PARTICLE then
minetest.register_abm({
	nodenames = {"default:lava_source"},
	--neighbors = {"default:dirt_with_grass", "landscape:full_grass_block"},
	interval = 2,
	chance = 2,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if LAVA_SOUND then minetest.sound_play("dplus_lava", {pos = pos, gain = 0.05, max_hear_distance = 1.5}) end
			if LAVA_PARTICLE then
				if math.random(1,13) == 8 then
					local rnd = math.random(0,1)*-1
					minetest.add_particle(pos, {x=0.1*rnd, y=0.8, z=-0.1*rnd}, {x=-0.5*rnd, y=0.2, z=0.5*rnd}, 1.7,
   					1.2, true, "lava_particle.png")
				end
			end
	end})
end

--more stonebricks

minetest.register_craft({
	output = 'default:stonebrick 4',
	recipe = {
		{'default:stone', 'default:stone'},
		{'default:stone', 'default:stone'},
	}
})

minetest.register_abm({
	nodenames = {"default:cactus"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		--pos.y =pos.y-0.4
		for _,object in ipairs(minetest.env:get_objects_inside_radius(pos, 15.1/16)) do--1.3
			if object:get_hp() > 0 then
				object:set_hp(object:get_hp()-1)
				if object:is_player() then
					if CACTUS_HURT_SOUND then minetest.sound_play("dplus_hurt", {pos = pos, gain = 0.5, max_hear_distance = 10}) end
				end
			elseif not object:is_player() and object:get_hp() == 0 and object:get_luaentity().name ~= "__builtin:item" then
				object:remove()
			end
		end
	end})

--better glass
minetest.register_node(":default:glass", {
	description = "Glass",
	drawtype = "glasslike",
	use_texture_alpha = true,
	tiles = {"dplus_glass.png^dplus_glass.png"},
	inventory_image = minetest.inventorycube("dplus_glass.png"),
	paramtype = "light",
	sunlight_propagates = true,
	groups = {cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
})


local function stop_slip(player, time)
	minetest.after(time, function()
		player:set_physics_override(1, 1, 1)
	end)
end


--remove dirt_with_snow (when snow digged)
minetest.register_on_dignode(function(pos, oldnode, digger)
	if oldnode.name == "default:snow" then
		pos.y = pos.y-1
		if minetest.env:get_node(pos).name == "default:dirt_with_snow" then
			minetest.env:set_node(pos, {name="default:dirt_with_grass"})
		end
	end
end)


--improved water
minetest.register_node(":default:water_flowing", {
	description = "Flowing Water",
	inventory_image = minetest.inventorycube("default_water.png"),
	drawtype = "flowingliquid",
	tiles = {"default_water.png"},
	special_tiles = {
		{
			image="default_water_flowing_animated.png",
			backface_culling=false,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=0.8}
		},
		{
			image="default_water_flowing_animated.png",
			backface_culling=true,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=0.8}
		},
	},
	alpha = 180,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "default:water_flowing",
	liquid_alternative_source = "default:water_source",
	liquid_viscosity = WATER_VISC,
	post_effect_color = {a=128, r=0, g=42, b=255},
	groups = {water=3, liquid=3, puts_out_fire=1, not_in_creative_inventory=1},
})

minetest.register_node(":default:water_source", {
	description = "Water Source",
	inventory_image = minetest.inventorycube("default_water.png"),
	drawtype = "liquid",
	tiles = {
		{name="default_water_source_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0}}
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name="default_water_source_animated.png",
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0},
			backface_culling = false,
		}
	},
	alpha = 180,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "default:water_flowing",
	liquid_alternative_source = "default:water_source",
	liquid_viscosity = WATER_VISC,
	post_effect_color = {a=128, r=0, g=42, b=255},
	groups = {water=3, liquid=3, puts_out_fire=1},
})

--leaves do not decay when placed by player
minetest.register_on_placenode(function(pos, newnode, placer, oldnode)
	if placer:is_player() then 
		local d = minetest.registered_nodes[newnode.name].groups.leafdecay
		if d or not d == 0 then
			newnode.param2 = 1
			minetest.env:set_node(pos, newnode)	
		end
	end
end)

--charcoal
minetest.register_craftitem("dplus:charcoal", {
	description = "Charcoal",
	inventory_image = "dplus_charcoal.png",
	groups = {coal=1},
})

minetest.register_craft({
	type = "fuel",
	recipe = "dplus:charcoal",
	burntime = 30,
})

minetest.register_craft({
	type = "cooking",
	output = "dplus:charcoal",
	recipe = "group:tree",
})


--overrides that torches need group coal
local torch = "default:torch"
if (minetest.get_modpath("stoneage")) ~= nil then
    torch = "stoneage:torch_unlit"
end
 
minetest.register_craft({
  	output = torch .. " 4",
  	recipe = {
  		{'group:coal'},
  		{'default:stick'},
  	}
})

minetest.register_craftitem(":default:coal_lump", {
	description = "Coal Lump",
	inventory_image = "default_coal_lump.png",
	groups = {coal=1},
})

--apple decay compatibility
minetest.register_alias("dplus:apple", "default:apple")
