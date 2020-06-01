local mod_default = minetest.get_modpath("default") ~= nil
local mod_mcl_sounds = minetest.get_modpath("mcl_sounds") ~= nil

local sounds = {  }
if mod_default then
	sounds = default.node_sound_stone_defaults()
elseif mod_mcl_sounds then
	sounds = mcl_sounds.node_sound_stone_defaults()
end

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
	groups = { cracky = 3, attached_node = 1, not_in_creative_inventory = 1 },
	sounds = sounds,
	drop = ""
})