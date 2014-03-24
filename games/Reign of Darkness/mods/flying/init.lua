if minetest.setting_getbool("creative_mode") then

minetest.register_privilege("fly", {
	description = "Can fly using the free_move mode",
	give_to_singleplayer = true,
})

end