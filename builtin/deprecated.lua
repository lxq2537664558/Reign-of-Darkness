-- Minetest: builtin/deprecated.lua

--
-- Default material types
--
function digprop_err()
	minetest.log("info", debug.traceback())
	minetest.log("info", "WARNING: The minetest.digprop_* functions are obsolete and need to be replaced by item groups.")
end

minetest.digprop_constanttime = digprop_err
minetest.digprop_stonelike = digprop_err
minetest.digprop_dirtlike = digprop_err
minetest.digprop_gravellike = digprop_err
minetest.digprop_woodlike = digprop_err
minetest.digprop_leaveslike = digprop_err
minetest.digprop_glasslike = digprop_err

minetest.node_metadata_inventory_move_allow_all = function()
	minetest.log("info", "WARNING: minetest.node_metadata_inventory_move_allow_all is obsolete and does nothing.")
end

minetest.add_to_creative_inventory = function(itemstring)
	minetest.log('info', "WARNING: minetest.add_to_creative_inventory: This function is deprecated and does nothing.")
end

--
-- EnvRef
--
minetest.env = {}
local envref_deprecation_message_printed = false
setmetatable(minetest.env, {
	__index = function(table, key)
		if not envref_deprecation_message_printed then
			minetest.log("info", "WARNING: minetest.env:[...] is deprecated and should be replaced with minetest.[...]")
			envref_deprecation_message_printed = true
		end
		local func = minetest[key]
		if type(func) == "function" then
			rawset(table, key, function(self, ...)
				return func(...)
			end)
		else
			rawset(table, key, nil)
		end
		return rawget(table, key)
	end
})

function minetest.rollback_get_last_node_actor(pos, range, seconds)
	return minetest.rollback_get_node_actions(pos, range, seconds, 1)[1]
end

