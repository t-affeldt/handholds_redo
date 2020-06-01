-- Minetest Game
local mod_default = minetest.get_modpath("default") ~= nil

-- MineClone 2
local mod_mcl_core = minetest.get_modpath("mcl_core") ~= nil
local mod_mcl_tools = minetest.get_modpath("mcl_tools") ~= nil

-- Realtest MT5
local mod_instruments = minetest.get_modpath("instruments") ~= nil
local mod_grounds = minetest.get_modpath("grounds") ~= nil
local mod_ores = minetest.get_modpath("ores") ~= nil
local is_realtest = mod_instruments

-- various mods
local mod_moreores = minetest.get_modpath("moreores") ~= nil
local mod_technic_worldgen = minetest.get_modpath("technic_worldgen") ~= nil
local mod_bakedclay = minetest.get_modpath("bakedclay") ~= nil
local mod_mobs_monster = minetest.get_modpath("mobs_monster") ~= nil
local mod_lavastuff = minetest.get_modpath("lavastuff") ~= nil
local mod_obsidianstuff = minetest.get_modpath("obsidianstuff") ~= nil
local mod_caverealms = minetest.get_modpath("caverealms") ~= nil
local mod_df_mapitems = minetest.get_modpath("df_mapitems") ~= nil
local mod_df_underworld_items = minetest.get_modpath("df_underworld_items") ~= nil
local mod_pedology = minetest.get_modpath("pedology") ~= nil
local mod_gloopblocks = minetest.get_modpath("gloopblocks") ~= nil

local tools = { }
local nodes = { }

-- Minetest Game
if mod_default and not is_realtest then
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

-- MineClone 2
if mod_mcl_tools then
	tools["mcl_tools:pick_wood"] = 1
	tools["mcl_tools:pick_stone"] = 3
	tools["mcl_tools:pick_iron"] = 4
	tools["mcl_tools:pick_gold"] = 2
	tools["mcl_tools:pick_diamond"] = 5
end

if mod_mcl_core then
	nodes["mcl_core:stone"] = 1
	nodes["mcl_core:stone_with_coal"] = 1
	nodes["mcl_core:stone_with_iron"] = 3
	nodes["mcl_core:stone_with_gold"] = 4
	nodes["mcl_core:stone_with_redstone"] = 4
	nodes["mcl_core:stone_with_redstone_lit"] = 4
	nodes["mcl_core:stone_with_lapis"] = 3
	nodes["mcl_core:stone_with_emerald"] = 4
	nodes["mcl_core:stone_with_diamond"] = 4
	nodes["mcl_core:stonebrick"] = 1
	nodes["mcl_core:stonebrickcarved"] = 1
	nodes["mcl_core:stonebrickcracked"] = 1
	nodes["mcl_core:stonebrickmossy"] = 1
	nodes["mcl_core:stone_smooth"] = 1
	nodes["mcl_core:granite"] = 1
	nodes["mcl_core:granite_smooth"] = 1
	nodes["mcl_core:andesite"] = 1
	nodes["mcl_core:andesite_smooth"] = 1
	nodes["mcl_core:diorite"] = 1
	nodes["mcl_core:diorite_smooth"] = 1
	nodes["mcl_core:sandstone"] = 1
	nodes["mcl_core:sandstonesmooth"] = 1
	nodes["mcl_core:sandstonesmooth"] = 1
	nodes["mcl_core:sandstonesmooth"] = 1
	nodes["mcl_core:redsandstone"] = 1
	nodes["mcl_core:redsandstonesmooth"] = 1
	nodes["mcl_core:redsandstonecarved"] = 1
	nodes["mcl_core:redsandstonesmooth2"] = 1
	nodes["mcl_core:brick_block"] = 1
	nodes["mcl_core:cobble"] = 1
	nodes["mcl_core:mossycobble"] = 1
	nodes["mcl_core:obsidian"] = 5
	nodes["mcl_core:ice"] = 1
	nodes["mcl_core:packed_ice"] = 1
end

-- Realtest MT5
if mod_instruments then
	local instruments = {}
	instruments.materials = {"stone","bismuth","zinc","tin","copper","rose_gold","oroide","black_bronze","bismuth_bronze","tumbaga","bronze","aluminium","wrought_iron","german_silver","albata","steel","monel","black_steel"}
	instruments.levels = {0,0,0,0,1,2,2,2,2,2,2,2,3,4,4,4,4,5}
	for i, material in ipairs(instruments.materials) do
		local level = instruments.levels[i]
		tools["instruments:pick_" .. material] = level + 1
	end
end

if mod_default and mod_grounds then
	nodes["default:stone"] = 1
	nodes["default:stone_bricks"] = 1
	nodes["default:stone_macadam"] = 1
	nodes["default:desert_stone"] = 1
	nodes["default:desert_stone_bricks"] = 1
	nodes["default:desert_stone_macadam"] = 1
end

if mod_ores then
	local ores = {"lignite","anthracite","bituminous_coal","magnetite","hematite","limonite","bismuthinite","cassiterite","galena","garnierite","malachite","native_copper","native_gold","native_silver","native_platinum","sphalerite","tetrahedrite","lazurite","bauxite","cinnabar","cryolite","graphite","gypsum","jet","kaolinite","kimberlite","olivine","petrified_wood","saltpeter","satin_spar","selenite","serpentine","sylvite","tenorite"}
	local ores_desert = {"native_copper","native_gold"}
	for _, ore in ipairs(ores) do
		nodes["ores:" .. ore .. "_in_default_stone"] = 1
	end
	for _, ore in ipairs(ores_desert) do
		nodes["ores:" .. ore .. "_in_default_desert_stone"] = 1
	end
end

-- mod support
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

if mod_lavastuff and not mod_mobs_monster then
	tools["lavastuff:pick"] = 4
end

if mod_obsidianstuff then
	tools["obsidianstuff:pick"] = 4
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

if mod_gloopblocks then
	tools["gloopblocks:pick_cement"] = 3
	tools["gloopblocks:pick_evil"] = 3

	nodes["gloopblocks:basalt"] = 1
	nodes["gloopblocks:cobble_road"] = 1
	nodes["gloopblocks:cobble_road_mossy"] = 1
	nodes["gloopblocks:pavement"] = 1
	nodes["gloopblocks:pumice"] = 1
	nodes["gloopblocks:stone_brick_mossy"] = 1
	nodes["gloopblocks:stone_mossy"] = 1
end

return {
	tools = tools,
	nodes = nodes
}