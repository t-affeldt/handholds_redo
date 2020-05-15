local utility = {}

function utility.is_creative(player)
	if minetest.settings:get_bool("creative_mode") == true then
		return true
	end
	local name = player:get_player_name()
	if name == nil or name == "" then
		return false
	end
	return minetest.check_player_privs(name, { creative = true })
end


function utility.is_replaceable(pos)
	local node = minetest.registered_nodes[minetest.get_node(pos)]
	if node == nil or node.name == "handholds_redo:holds" then return true end
	return node.name == "air" or node.buildable_to
end

function utility.is_climbable(pos, level)
	local def = minetest.registered_nodes[minetest.get_node(pos).name]
	if def == nil then return false end
	if def.groups == nil or def.groups.handholds == nil then return false end
	return level >= def.groups.handholds
end


function utility.place_holds(itemstack, placer, pointed_thing)
	if itemstack == nil then return end
	local itemdef = itemstack:get_definition()
	if itemdef == nil
			or itemdef.groups == nil
			or itemdef.groups.climbing_pick == nil then
		return
	end

	if pointed_thing == nil or
			pointed_thing.type ~= "node" or
			pointed_thing.under.y + 1 == pointed_thing.above.y or
			not utility.is_replaceable(pointed_thing.above) or
			not utility.is_climbable(pointed_thing.under, itemdef.groups.climbing_pick) then
		return
	end

	if minetest.is_protected(pointed_thing.under, placer:get_player_name()) or
			minetest.is_protected(pointed_thing.above, placer:get_player_name()) then
		minetest.record_protection_violation(pointed_thing.above, placer)
		return
	end

	local rotation = minetest.dir_to_wallmounted(
		vector.subtract(pointed_thing.under, pointed_thing.above)
	)

	minetest.set_node(pointed_thing.above, {
		name = "handholds_redo:holds",
		param2 = rotation
	})

	minetest.sound_play(
		"default_dig_cracky",
		{pos = pointed_thing.under, gain = 0.5, max_hear_distance = 8}
	)

	if not utility.is_creative(placer) then
		local wdef = itemstack:get_definition()
		itemstack:add_wear(256)
		if itemstack:get_count() == 0 and wdef.sound and wdef.sound.breaks then
			minetest.sound_play(wdef.sound.breaks, {
				pos = pointed_thing.above,
				gain = 0.5
			})
		end
	end
	return itemstack
end

return utility