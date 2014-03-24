local hand = "wield_dummy.png^[combine:16x16:2,2=wield_dummy.png:-52,-23=character.png^[transformfy"
local tool_cap = {
		full_punch_interval = 1.0,
		max_drop_level = 0,
		groupcaps = {
			fleshy = {times={[2]=2.00, [3]=1.00}, uses=0, maxlevel=1},
			crumbly = {times={[2]=3.00, [3]=0.70}, uses=0, maxlevel=1},
			snappy = {times={[3]=0.40}, uses=0, maxlevel=1},
			oddly_breakable_by_hand = {times={[1]=7.00,[2]=4.00,[3]=1.40}, uses=0, maxlevel=3},
		}
	}
if minetest.setting_getbool("creative_mode") then
tool_cap = {	full_punch_interval = 0.5,
		max_drop_level = 3,
		groupcaps = {
			crumbly = {times={[1]=0.5, [2]=0.5, [3]=0.5}, uses=0, maxlevel=3},
			cracky = {times={[1]=0.5, [2]=0.5, [3]=0.5}, uses=0, maxlevel=3},
			snappy = {times={[1]=0.5, [2]=0.5, [3]=0.5}, uses=0, maxlevel=3},
			choppy = {times={[1]=0.5, [2]=0.5, [3]=0.5}, uses=0, maxlevel=3},
			oddly_breakable_by_hand = {times={[1]=0.5, [2]=0.5, [3]=0.5}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy = 10},
	}
end


minetest.after(0, function()

	minetest.register_item(":", {
		type = "none",
		wield_image = hand,
		wield_scale = {x=1.8,y=1,z=2.8},
		tool_capabilities = tool_cap,
	})
end)