local mod_default = minetest.get_modpath("default") ~= nil
local mod_moreores = minetest.get_modpath("moreores") ~= nil
local mod_technic_worldgen = minetest.get_modpath("technic_worldgen") ~= nil
local mod_bakedclay = minetest.get_modpath("bakedclay") ~= nil
local mod_mobs_monster = minetest.get_modpath("mobs_monster") ~= nil
local mod_caverealms = minetest.get_modpath("caverealms") ~= nil
local mod_df_mapitems = minetest.get_modpath("df_mapitems") ~= nil
local mod_df_underworld_items = minetest.get_modpath("df_underworld_items") ~= nil
local mod_pedology = minetest.get_modpath("pedology") ~= nil

local tools = { }
local nodes = { }

if mod_default then
	tools["default:pick_wood"] = 1
	tools["default:pick_stone"] = 2
	tools["default:pick_bronze"] = 3
	tools["default:pick_steel"] = 3
	tools["default:pick_mese"] = 4
	tools["default:pick_diamond"] = 4

	nodes["default:stone"] = 1
	nodes["default:cobble"] = 1
	nodes["default:stonebrick"] = 1
	nodes["default:stone_block"] = 1
	nodes["default:mossycobble"] = 1
	nodes["default:desert_stone"] = 1
	nodes["default:desert_cobble"] = 1
	nodes["default:desert_stonebrick"] = 1
	nodes["default:desert_stone_block"] = 1
	nodes["default:sandstone"] = 1
	nodes["default:sandstonebrick"] = 1
	nodes["default:sandstone_block"] = 1
	nodes["default:desert_sandstone"] = 1
	nodes["default:desert_sandstone_brick"] = 1
	nodes["default:desert_sandstone_block"] = 1
	nodes["default:silver_sandstone"] = 1
	nodes["default:silver_sandstone"] = 1
	nodes["default:silver_sandstone_brick"] = 1
	nodes["default:silver_sandstone_block"] = 1
	nodes["default:obsidian"] = 3
	nodes["default:obsidianbrick"] = 3
	nodes["default:obsidian_block"] = 3
	nodes["default:brick"] = 1
	nodes["default:ice"] = 1
	nodes["default:cave_ice"] = 1
	nodes["default:stone_with_coal"] = 1
	nodes["default:stone_with_iron"] = 2
	nodes["default:stone_with_copper"] = 2
	nodes["default:stone_with_tin"] = 2
	nodes["default:stone_with_gold"] = 2
	nodes["default:stone_with_mese"] = 3
	nodes["default:stone_with_diamond"] = 3
end

if mod_moreores then
	tools["moreores:pick_silver"] = 3
	tools["moreores:pick_mithril"] = 4

	nodes["moreores:mineral_silver"] = 2
	nodes["moreores:mineral_mithril"] = 3
end

if mod_technic_worldgen then
	nodes["technic:mineral_uranium"] = 2
	nodes["technic:mineral_chromium"] = 2
	nodes["technic:mineral_zinc"] = 2
	nodes["technic:mineral_lead"] = 2
	nodes["technic:mineral_sulfur"] = 2
	nodes["technic:granite"] = 3
	nodes["technic:marble"] = 1
	nodes["technic:marble_bricks"] = 1
end

if mod_bakedclay then
	nodes["bakedclay:white"] = 1
	nodes["bakedclay:grey"] = 1
	nodes["bakedclay:black"] = 1
	nodes["bakedclay:red"] = 1
	nodes["bakedclay:yellow"] = 1
	nodes["bakedclay:green"] = 1
	nodes["bakedclay:cyan"] = 1
	nodes["bakedclay:blue"] = 1
	nodes["bakedclay:magenta"] = 1
	nodes["bakedclay:orange"] = 1
	nodes["bakedclay:violet"] = 1
	nodes["bakedclay:brown"] = 1
	nodes["bakedclay:pink"] = 1
	nodes["bakedclay:dark_grey"] = 1
	nodes["bakedclay:dark_green"] = 1
end

if mod_mobs_monster then
	tools["mobs:pick_lava"] = 4
end

if mod_caverealms then
	nodes["caverealms:stone_with_algae"] = 1
	nodes["caverealms:stone_with_lichen"] = 1
	nodes["caverealms:stone_with_moss"] = 1
	nodes["caverealms:hot_cobble"] = 1
	nodes["caverealms:glow_obsidian"] = 3
	nodes["caverealms:glow_obsidian_2"] = 3
end

if mod_df_mapitems then
	nodes["df_mapitems:cobble_with_floor_fungus"] = 1
	nodes["df_mapitems:cobble_with_floor_fungus_fine"] = 1
	nodes["df_mapitems:dry_flowstone"] = 1
	nodes["df_mapitems:wet_flowstone"] = 1
	nodes["df_mapitems:salty_cobble"] = 1
	nodes["df_mapitems:veinstone"] = 1
	nodes["df_mapitems:ice_with_hoar_moss"] = 1
end

if mod_df_underworld_items then
	nodes["df_underworld_items:slade"] = 1
	nodes["df_underworld_items:slade_block"] = 1
	nodes["df_underworld_items:slade_brick"] = 1
	nodes["df_underworld_items:slade_seal"] = 1
end

if mod_pedology then
	nodes["pedology:ice_white"] = 1
end

return {
	tools = tools,
	nodes = nodes
}