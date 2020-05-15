local node_box = {
	type = "wallmounted",
	wall_side = { -0.5, 0.5, -0.5, -0.49, -0.5, 0.5 },
	wall_top = { -0.5, 0.5, -0.5, 0.5, 0.49, 0.5 },
	wall_bottom = { -0.5, 0.5, -0.5, 0.5, -0.5, -0.49 }
}

minetest.register_node("handholds_redo:holds", {
	description = "Handholds",
	inventory_image = "handholds_holds.png",
	wield_image = "handholds_holds.png",
	tiles = { "handholds_holds.png" },
	use_texture_alpha = true,
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	pointable = false,
	buildable_to = true,
	climbable = true,
	floodable = true,
	is_ground_content = false,
	node_box = node_box,
	selection_box = node_box,
	groups = { cracky = 3, attached_node = 1 },
	sounds = default.node_sound_stone_defaults(),
	drop = ""
})