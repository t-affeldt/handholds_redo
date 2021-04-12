local modpath = minetest.get_modpath(minetest.get_current_modname())

local capabilities = dofile(modpath .. "/lib/mod_capabilities.lua")
local utility = dofile(modpath .. "/lib/utility.lua")
dofile(modpath .. "/lib/definitions.lua")

handholds = {}
function handholds.register_pick(name, level)
	local def = minetest.registered_tools[name]
	if def == nil then
		minetest.log("warning",
			"[Handholds Redo] Climbing pick `" .. name .. "` is not a registered tool")
		return
	end
	if level == nil then level = 1 end
	local groups = def.groups
	groups.climbing_pick = level
	local placement_handler = def.on_place
	minetest.override_item(name, {
		on_place = function(...)
			utility.place_holds(...)
			if placement_handler ~= nil then
				return placement_handler(...)
			end
		end,
		groups = groups
	})
end

function handholds.mark_climbable(name, level)
	local def = minetest.registered_nodes[name]
	if def == nil then
		minetest.log("warning",
			"[Handholds Redo] Climbable node `" .. name .. "` is not a registered node")
		return
	end
	if level == nil then level = 1 end
	local groups = def.groups
	groups.handholds = level
	minetest.override_item(name, {
		groups = groups
	})
end

for tool, level in pairs(capabilities.tools) do
	handholds.register_pick(tool, level)
end

for node, level in pairs(capabilities.nodes) do
	handholds.mark_climbable(node, level)
end
