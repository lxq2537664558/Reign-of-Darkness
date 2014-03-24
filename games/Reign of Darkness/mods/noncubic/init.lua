-- NonCubic Blocks MOD v1.4
------------by yves_de_beck




-- HERE YOU CAN CHANGE THE DETAIL-LEVEL:
----------------------------------------
detail_level = 16


-- VAR DECLARATION:
-------------------
noncubic = {}


-- REGISTER NONCUBIC FORMS, CREATE MODELS AND RECIPES:
------------------------------------------------------

-- SLOPE
--------
function noncubic.register_slope(subname, recipeitem, groups, images, description)

local slopebox = {}
local detail = detail_level
for i = 0, detail-1 do
	slopebox[i+1]={-0.5, (i/detail)-0.5, (i/detail)-0.5, 0.5, (i/detail)-0.5+(1/detail), 0.5}
end
minetest.register_node("noncubic:slope_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = slopebox,
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:slope_' .. subname .. ' 6',
		recipe = {
			{recipeitem, "", ""},
			{recipeitem, recipeitem, ""},
			{recipeitem, recipeitem, recipeitem},		
		},
	})
	minetest.register_craft({
		output = 'noncubic:slope_' .. subname .. ' 6',
		recipe = {
			{"", "", recipeitem},
			{"", recipeitem, recipeitem},
			{recipeitem, recipeitem, recipeitem},		
		},
	})

end


-- SLOPE Lying
----------------
function noncubic.register_slope_lying(subname, recipeitem, groups, images, description)

local slopeboxlying = {}
local detail = detail_level
for i = 0, detail-1 do
	slopeboxlying[i+1]={(i/detail)-0.5, -0.5, (i/detail)-0.5, (i/detail)-0.5+(1/detail), 0.5 , 0.5}
end
minetest.register_node("noncubic:slope_lying_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = slopeboxlying,
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:slope_lying_' .. subname .. ' 1',
		recipe = {
			{"", "", ""},
			{"", 'noncubic:slope_' .. subname, ""},
			{"", "", ""},		
		},
	})

end


-- SLOPE UPSIDE DOWN
--------------------
function noncubic.register_slope_upsdown(subname, recipeitem, groups, images, description)

if subname == "dirt" then
return
end

local slopeupdwnbox = {}
local detail = detail_level
for i = 0, detail-1 do
	slopeupdwnbox[i+1]={-0.5, (i/detail)-0.5, (-1*(i/detail))+0.5-(1/detail), 0.5, (i/detail)-0.5+(1/detail), 0.5}
end
minetest.register_node("noncubic:slope_upsdown_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = slopeupdwnbox,
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:slope_upsdown_' .. subname .. ' 6',
		recipe = {
			{recipeitem, recipeitem, recipeitem},
			{"", recipeitem, recipeitem},	
			{"", "", recipeitem},	
		},
	})
	minetest.register_craft({
		output = 'noncubic:slope_upsdown_' .. subname .. ' 6',
		recipe = {
			{recipeitem, recipeitem, recipeitem},
			{recipeitem, recipeitem, ""},	
			{recipeitem, "", ""},	
		},
	})

end


-- SLOPE EDGE
-------------
function noncubic.register_slope_edge(subname, recipeitem, groups, images, description)

local slopeboxedge = {}
local detail = detail_level
for i = 0, detail-1 do
	slopeboxedge[i+1]={(i/detail)-0.5, -0.5, (i/detail)-0.5, 0.5, (i/detail)-0.5+(1/detail), 0.5}
end
minetest.register_node("noncubic:slope_edge_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = slopeboxedge,
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:slope_edge_' .. subname .. ' 3',
		recipe = {
			{"", "", ""},
			{recipeitem, "", ""},
			{recipeitem, recipeitem, ""},		
		},
	})
	minetest.register_craft({
		output = 'noncubic:slope_edge_' .. subname .. ' 3',
		recipe = {
			{"", "", ""},
			{"", "", recipeitem},
			{"", recipeitem, recipeitem},		
		},
	})

end


-- SLOPE INNER EDGE
-------------------
function noncubic.register_slope_inner_edge(subname, recipeitem, groups, images, description)

minetest.register_node("noncubic:slope_inner_edge_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = {
			-- PART 1
			{-0.5, -0.5, -0.5, 0.5, -0.45, 0.5},
			{-0.45, -0.5, -0.5, 0.5, -0.4, 0.5},
			{-0.4, -0.5, -0.5, 0.5, -0.35, 0.5},
			{-0.35, -0.5, -0.5, 0.5, -0.3, 0.5},
			{-0.3, -0.5, -0.5, 0.5, -0.25, 0.5},
			{-0.25, -0.5, -0.5, 0.5, -0.2, 0.5},
			{-0.2, -0.5, -0.5, 0.5, -0.15, 0.5},
			{-0.15, -0.5, -0.5, 0.5, -0.1, 0.5},
			{-0.1, -0.5, -0.5, 0.5, -0.05, 0.5},
			{-0.05, -0.5, -0.5, 0.5, 0, 0.5},
			{0, -0.5, -0.5, 0.5, 0.05, 0.5},
			{0.05, -0.5, -0.5, 0.5, 0.1, 0.5},
			{0.1, -0.5, -0.5, 0.5, 0.15, 0.5},
			{0.15, -0.5, -0.5, 0.5, 0.2, 0.5},
			{0.2, -0.5, -0.5, 0.5, 0.25, 0.5},
			{0.25, -0.5, -0.5, 0.5, 0.3, 0.5},
			{0.3, -0.5, -0.5, 0.5, 0.35, 0.5},
			{0.35, -0.5, -0.5, 0.5, 0.4, 0.5},
			{0.4, -0.5, -0.5, 0.5, 0.45, 0.5},
			{0.45, -0.5, -0.5, 0.5, 0.5, 0.5},
			-- PART 2
			{-0.5, -0.5, -0.45, 0.5, -0.45, 0.5},
			{-0.5, -0.5, -0.4, 0.5, -0.4, 0.5},
			{-0.5, -0.5, -0.35, 0.5, -0.35, 0.5},
			{-0.5, -0.5, -0.3, 0.5, -0.3, 0.5},
			{-0.5, -0.5, -0.25, 0.5, -0.25, 0.5},
			{-0.5, -0.5, -0.2, 0.5, -0.2, 0.5},
			{-0.5, -0.5, -0.15, 0.5, -0.15, 0.5},
			{-0.5, -0.5, -0.1, 0.5, -0.1, 0.5},
			{-0.5, -0.5, -0.05, 0.5, -0.05, 0.5},
			{-0.5, -0.5, 0, 0.5, 0, 0.5},
			{-0.5, -0.5, 0.05, 0.5, 0.05, 0.5},
			{-0.5, -0.5, 0.1, 0.5, 0.1, 0.5},
			{-0.5, -0.5, 0.15, 0.5, 0.15, 0.5},
			{-0.5, -0.5, 0.2, 0.5, 0.2, 0.5},
			{-0.5, -0.5, .25, 0.5, 0.25, 0.5},
			{-0.5, -0.5, 0.3, 0.5, 0.3, 0.5},
			{-0.5, -0.5, 0.35, 0.5, 0.35, 0.5},
			{-0.5, -0.5, 0.4, 0.5, 0.4, 0.5},
			{-0.5, -0.5, 0.45, 0.5, 0.45, 0.5},
			{-0.5, -0.5, 0.5, 0.5, 0.5, 0.5},
			},
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:slope_inner_edge_' .. subname .. ' 3',
		recipe = {
			{"", "", recipeitem},
			{recipeitem, "", ""},
			{recipeitem, recipeitem, ""},		
		},
	})
	minetest.register_craft({
		output = 'noncubic:slope_inner_edge_' .. subname .. ' 3',
		recipe = {
			{recipeitem, "", ""},
			{"", "", recipeitem},
			{"", recipeitem, recipeitem},		
		},
	})

end


-- SLOPE EDGE UPSIDE DOWN
-------------------------
function noncubic.register_slope_upsdown_edge(subname, recipeitem, groups, images, description)

if subname == "dirt" then
return
end

local slopeupdwnboxedge = {}
local detail = detail_level
for i = 0, detail-1 do
	slopeupdwnboxedge[i+1]={(-1*(i/detail))+0.5-(1/detail), (i/detail)-0.5, (-1*(i/detail))+0.5-(1/detail), 0.5, (i/detail)-0.5+(1/detail), 0.5}
end
minetest.register_node("noncubic:slope_upsdown_edge_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = slopeupdwnboxedge,
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:slope_upsdown_edge_' .. subname .. ' 3',
		recipe = {
			{"", recipeitem, recipeitem},
			{"", "", recipeitem},	
			{"", "", ""},	
		},
	})
	minetest.register_craft({
		output = 'noncubic:slope_upsdown_edge_' .. subname .. ' 3',
		recipe = {
			{recipeitem, recipeitem, ""},
			{recipeitem, "", ""},	
			{"", "", ""},	
		},
	})

end


-- SLOPE INNER EDGE UPSIDE DOWN
-------------------------------
function noncubic.register_slope_upsdown_inner_edge(subname, recipeitem, groups, images, description)

if subname == "dirt" then
return
end

minetest.register_node("noncubic:slope_upsdown_inner_edge_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = {
			{0.45, -0.5, -0.5, 0.5, -0.45, 0.5},
			{0.4, -0.45, -0.5, 0.5, -0.4, 0.5},
			{0.35, -0.4, -0.5, 0.5, -0.35, 0.5},
			{0.3, -0.35, -0.5, 0.5, -0.3, 0.5},
			{0.25, -0.3, -0.5, 0.5, -0.25, 0.5},
			{0.2, -0.25, -0.5, 0.5, -0.2, 0.5},
			{0.15, -0.2, -0.5, 0.5, -0.15, 0.5},
			{0.1, -0.15, -0.5, 0.5, -0.1, 0.5},
			{0.05, -0.1, -0.5, 0.5, -0.05, 0.5},
			{0, -0.05, -0.5, 0.5, 0, 0.5},
			{-0.05, 0, -0.5, 0.5, 0.05, 0.5},
			{-0.1, 0.05, -0.5, 0.5, 0.1, 0.5},
			{-0.15, 0.1, -0.5, 0.5, 0.15, 0.5},
			{-0.2, 0.15, -0.5, 0.5, 0.2, 0.5},
			{-0.25, 0.2, -0.5, 0.5, 0.25, 0.5},
			{-0.3, 0.25, -0.5, 0.5, 0.3, 0.5},
			{-0.35, 0.3, -0.5, 0.5, 0.35, 0.5},
			{-0.4, 0.35, -0.5, 0.5, 0.4, 0.5},
			{-0.45, 0.4, -0.5, 0.5, 0.45, 0.5},
			{-0.5, 0.45, -0.5, 0.5, 0.5, 0.5},

			{-0.5, -0.5, 0.45, 0.5, -0.45, 0.5},
			{-0.5, -0.45, 0.4, 0.5, -0.4, 0.5},
			{-0.5, -0.4, 0.35, 0.5, -0.35, 0.5},
			{-0.5, -0.35, 0.3, 0.5, -0.3, 0.5},
			{-0.5, -0.3, 0.25, 0.5, -0.25, 0.5},
			{-0.5, -0.25, 0.2, 0.5, -0.2, 0.5},
			{-0.5, -0.2, 0.15, 0.5, -0.15, 0.5},
			{-0.5, -0.15, 0.1, 0.5, -0.1, 0.5},
			{-0.5, -0.1, 0.05, 0.5, -0.05, 0.5},
			{-0.5, -0.05, 0, 0.5, 0, 0.5},
			{-0.5, 0, -0.05, 0.5, 0.05, 0.5},
			{-0.5, 0.05, -0.1, 0.5, 0.1, 0.5},
			{-0.5, 0.1, -0.15, 0.5, 0.15, 0.5},
			{-0.5, 0.15, -0.2, 0.5, 0.2, 0.5},
			{-0.5, 0.2, -0.25, 0.5, 0.25, 0.5},
			{-0.5, 0.25, -0.3, 0.5, 0.3, 0.5},
			{-0.5, 0.3, -0.35, 0.5, 0.35, 0.5},
			{-0.5, 0.35, -0.4, 0.5, 0.4, 0.5},
			{-0.5, 0.4, -0.45, 0.5, 0.45, 0.5},
			{-0.5, 0.45, -0.5, 0.5, 0.5, 0.5},

			},
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:slope_upsdown_inner_edge_' .. subname .. ' 3',
		recipe = {
			{"", recipeitem, recipeitem},
			{"", "", recipeitem},
			{recipeitem, "", ""},		
		},
	})
	minetest.register_craft({
		output = 'noncubic:slope_upsdown_inner_edge_' .. subname .. ' 3',
		recipe = {
			{recipeitem, recipeitem, ""},
			{recipeitem, "", ""},
			{"", "", recipeitem},		
		},
	})

end



-- SPIKE
--------
function noncubic.register_spike(subname, recipeitem, groups, images, description)

if subname == "dirt" then
return
end

local spikebox = {}
local detail = detail_level
for i = 0, detail-1 do
	spikebox[i+1]={(i/detail/2)-0.5, (i/detail/2)-0.5, (i/detail/2)-0.5, 0.5-(i/detail/2), (i/detail)-0.5+(1/detail), 0.5-(i/detail/2)}
end
minetest.register_node("noncubic:spike_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = spikebox,
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:spike_' .. subname .. ' 5',
		recipe = {
			{"", recipeitem, ""},
			{recipeitem, "", recipeitem},
			{recipeitem, "", recipeitem},		
		},
	})

end


-- Cylinder
-----------
function noncubic.register_cylinder(subname, recipeitem, groups, images, description)

if subname == "dirt" then
return
end

local cylbox = {}
local detail = detail_level
local sehne
for i = 1, detail-1 do
	sehne = math.sqrt(0.25 - (((i/detail)-0.5)^2))
	cylbox[i]={(i/detail)-0.5, -0.5, -sehne, (i/detail)+(1/detail)-0.5, 0.5, sehne}
end
minetest.register_node("noncubic:cylinder_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = cylbox,
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:cylinder_' .. subname .. ' 6',
		recipe = {
			{recipeitem, recipeitem, ""},
			{recipeitem, recipeitem, ""},
			{recipeitem, recipeitem, ""},		
		},
	})
	minetest.register_craft({
		output = 'noncubic:cylinder_' .. subname .. ' 1',
		recipe = {
			{"", "", ""},
			{"", 'noncubic:cylinder_horizontal_' .. subname, ""},
			{"", "", ""},		
		},
	})

end


-- Cylinder Horizontal
----------------------
function noncubic.register_cylinder_horizontal(subname, recipeitem, groups, images, description)

if subname == "dirt" then
return
end

local cylbox_horizontal = {}
local detail = detail_level
local sehne
for i = 1, detail-1 do
	sehne = math.sqrt(0.25 - (((i/detail)-0.5)^2))
	cylbox_horizontal[i]={-0.5, (i/detail)-0.5, -sehne, 0.5, (i/detail)+(1/detail)-0.5, sehne}
end
minetest.register_node("noncubic:cylinder_horizontal_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = cylbox_horizontal,
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:cylinder_horizontal_' .. subname .. ' 6',
		recipe = {
			{"", "", ""},
			{recipeitem, recipeitem, recipeitem},
			{recipeitem, recipeitem, recipeitem},		
		},
	})
	minetest.register_craft({
		output = 'noncubic:cylinder_horizontal_' .. subname .. ' 1',
		recipe = {
			{"", "", ""},
			{"", 'noncubic:cylinder_' .. subname, ""},
			{"", "", ""},		
		},
	})

end


-- Sphere
---------
function noncubic.register_sphere(subname, recipeitem, groups, images, description)

if subname == "dirt" then
return
end

local spherebox = {}
local detail = detail_level
local sehne
for i = 1, detail-1 do
	sehne = math.sqrt(0.25 - (((i/detail)-0.5)^2))
	spherebox[i]={-sehne, (i/detail)-0.5, -sehne, sehne, (i/detail)+(1/detail)-0.5, sehne}
end
minetest.register_node("noncubic:cylinder_sphere_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = spherebox,
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:cylinder_sphere_' .. subname .. ' 4',
		recipe = {
			{"", recipeitem, ""},
			{recipeitem, "", recipeitem},
			{"", recipeitem, ""},		
		},
	})

end






-- REGISTER NEW NONCUBIC's PART 2: noncubic.register_element_end(subname, recipeitem, groups, images, desc_element_xyz)
-----------------------------------------------------------------------------------------------------------------------
function noncubic.register_slope_edge_etc(subname, recipeitem, groups, images, desc_slope, desc_slope_lying, desc_slope_upsdown, desc_slope_edge, desc_slope_inner_edge, desc_slope_upsdwn_edge, desc_slope_upsdwn_inner_edge, desc_pyramid, desc_spike, desc_onecurvededge, desc_twocurvededge, desc_cylinder, desc_cylinder_horizontal, desc_sphere, desc_element_straight, desc_element_edge, desc_element_t, desc_element_cross, desc_element_end)
         noncubic.register_slope(subname, recipeitem, groups, images, desc_slope)
         noncubic.register_slope_lying(subname, recipeitem, groups, images, desc_slope_lying)
	 noncubic.register_slope_upsdown(subname, recipeitem, groups, images, desc_slope_upsdown)
         noncubic.register_slope_edge(subname, recipeitem, groups, images, desc_slope_edge)
         noncubic.register_slope_inner_edge(subname, recipeitem, groups, images, desc_slope_inner_edge)
	 noncubic.register_slope_upsdown_edge(subname, recipeitem, groups, images, desc_slope_upsdwn_edge)
	 noncubic.register_slope_upsdown_inner_edge(subname, recipeitem, groups, images, desc_slope_upsdwn_inner_edge)
         noncubic.register_cylinder(subname, recipeitem, groups, images, desc_cylinder)
         noncubic.register_cylinder_horizontal(subname, recipeitem, groups, images, desc_cylinder_horizontal)
	 noncubic.register_sphere(subname, recipeitem, groups, images, desc_sphere)
end


-- REGISTER MATERIALS AND PROPERTIES FOR NONCUBIC ELEMENTS:
-----------------------------------------------------------

-- WOOD
-------
noncubic.register_slope_edge_etc("wood", "stairs:stair_wood",
                {snappy=2,choppy=2,oddly_breakable_by_hand=2},
                {"default_wood.png"},
                "Wooden Slope",
		"Wooden Slope Lying",
		"Wooden Slope Upside Down",
                "Wooden Slope Edge",
                "Wooden Slope Inner Edge",
		"Wooden Slope Upside Down Edge",
		"Wooden Slope Upside Down Inner Edge",
		"Wooden Cylinder",
		"Wooden Cylinder Horizontal",
		"Wooden Sphere")
-- STONE
--------
noncubic.register_slope_edge_etc("stone", "stairs:stair_stone",
                {cracky=3},
                {"default_stone.png"},
                "Stone Slope",
		"Stone Slope Lying",
		"Stone Slope Upside Down",
                "Stone Slope Edge",
                "Stone Slope Inner Edge",
		"Stone Slope Upside Down Edge",
		"Stone Slope Upside Down Inner Edge",
		"Stone Cylinder",
		"Stote Cylinder Horizontal",
		"Stone Sphere")
-- COBBLE
---------
noncubic.register_slope_edge_etc("cobble", "stairs:stair_cobble",
                {cracky=3},
                {"default_cobble.png"},
                "Cobble Slope",
		"Cobble Slope Lying",
		"Cobble Slope Upside Down",
                "Cobble Slope Edge",
                "Cobble Slope Inner Edge",
		"Cobble Slope Upside Down Edge",
		"Cobble Slope Upside Down Inner Edge",
		"Cobble Cylinder",
		"Cobble Cylinder Horizontal",
		"Cobble Sphere")
-- BRICK
--------
noncubic.register_slope_edge_etc("brick", "stairs:stair_brick",
                {cracky=3},
                {"default_brick.png"},
                "Brick Slope",
		"Brick Slope Upside Down",
                "Brick Slope Edge",
                "Brick Slope Inner Edge",
		"Brick Slope Upside Down Edge",
		"Brick Slope Upside Down Inner Edge",
		"Brick Cylinder",
		"Brick Cylinder Horizontal",
		"Brick Sphere")
-- SANDSTONE
------------
noncubic.register_slope_edge_etc("sandstone", "stairs:stair_sandstone",
                {crumbly=2,cracky=2},
                {"default_sandstone.png"},
                "Sandstone Slope",
		"Sandstone Slope Lying",
		"Sandstone Slope Upside Down",
                "Sandstone Slope Edge",
                "Sandstone Slope Inner Edge",
		"Sandstone Slope Upside Down Edge",
		"Sandstone Slope Upside Down Inner Edge",
		"Sandstone Cylinder",
		"Sandstone Cylinder Horizontal",
		"Sandstone Sphere")
-- LEAVES
---------
noncubic.register_slope_edge_etc("leaves", "default:leaves",
                {snappy=2,choppy=2,oddly_breakable_by_hand=3},
                {"bucharest_tree.png"},
                "Leaves Slope",
		"Leaves Slope Lying",
		"Leaves Slope Upside Down",
                "Leaves Slope Edge",
                "Leaves Slope Inner Edge",
		"Leaves Slope Upside Down Edge",
		"Leaves Slope Upside Down Inner Edge",
		"Leaves Cylinder",
		"Leaves Cylinder Horizontal",
		"Leaves Sphere")
-- DIRT
-------
noncubic.register_slope_edge_etc("dirt", "default:dirt",
                {snappy=2,choppy=2,oddly_breakable_by_hand=3},
                {"default_grass.png", "default_dirt.png", "default_grass.png"},
                "Dirt Slope",
		"Dirt Slope Lying",
		"Dirt Slope Upside Down",
                "Dirt Slope Edge",
                "Dirt Slope Inner Edge",
		"Dirt Slope Upside Down Edge",
		"Dirt Slope Upside Down Inner Edge",
		"Dirt Cylinder",
		"Dirt Cylinder Horizontal",
		"Dirt Sphere")
-- TREE
-------
noncubic.register_slope_edge_etc("tree", "default:tree",
                {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
                {"default_tree.png"},
                "Tree Slope",
		"Tree Slope Lying",
		"Tree Slope Upside Down",
                "Tree Slope Edge",
                "Tree Slope Inner Edge",
		"Tree Slope Upside Down Edge",
		"Tree Slope Upside Down Inner Edge",
		"Tree Cylinder",
		"Tree Cylinder Horizontal",
		"Tree Sphere")
-- STEEL
--------
noncubic.register_slope_edge_etc("steel", "default:steelblock",
                {snappy=1,bendy=2,cracky=1,melty=2,level=2},
                {"default_steel_block.png"},
                "Steel Slope",
		"Steel Slope Lying",
		"Steel Slope Upside Down",
                "Steel Slope Edge",
                "Steel Slope Inner Edge",
		"Steel Slope Upside Down Edge",
		"Steel Slope Upside Down Inner Edge",
		"Steel Cylinder",
		"Steel Cylinder Horizontal",
		"Steel Sphere")


