# Handholds Redo
Mountaineering made easy

![](https://raw.githubusercontent.com/t-affeldt/handholds_redo/master/screenshot.png)

This mod is inspired by the [handholds](https://forum.minetest.net/viewtopic.php?t=17069) mod that adds a climbing pick for easier mountaineering.
In that mod you can use a specialized tool to carve handholds into stone, sandstone, and ice blocks. These handholds would then allow you to climb upwards.

## Noticeable Differences
The code has been completely rewritten from scratch in order to make some significant changes.
* Instead of adding a new tool, handholds_redo lets you use your normal pickaxes by right-clicking
* Handholds can now be carved into a lot more materials including nodes from various different mods and subgames
* Handholds can now be carved into multiple sides of the same node
* Handholds can now be carved into the bottom face of a node, allowing you to climb on the ceiling
* Mod authors can now mark nodes as carveable more easily
* Mod authors can now assign a climbing pick ability to custom tools
* On a technical note, handhold nodes are now wallmounted and attached, meaning they don't need to be synced with their neighbouring nodes anymore

## Mod Support
### Supported Subgames
* Minetest Game
* MineClone 2
* Realtest MT5

### Supported Pickaxes from other mods
* moreores
* mobs_monster
* lavastuff
* obsidianstuff

### Supported Nodes from other mods
* moreores
* technic
* bakedclay
* caverealms
* df_caverns
* pedology
* gloopblocks

## Modding Capabilities
__Adding a carveable node__:
Adding additional nodes to the list of carveable materials is extremely easy.
All you need to do is assign a group value called ``handholds`` to the respective node like so:

```lua
minetest.register_node("mymod:test_node", {
	description = "Test Node",
	tiles = { "mymod_testnode.png" },
	groups = { handholds = 2 },
})
```

If you want to assign a group value to an already registered node you can either override that node
using ``minetest.override_item(node_name, node_definition)`` or a helper utility provided by this mod: ``handholds.mark_climbable(node_name, level)``.
This function will apply the specified *level* to the *handholds group* and assign it to the given node.
A pickaxe needs to have at least the same level in order to carve the material.
If left unspecified, this value defaults to 1.
For reference: A wooden pickaxe has a value of 1, stone a value of 2, bronze and steel a value of 3, mese and diamond a value of 4.

__Adding a custom pickaxe__: In order to apply the climbing behaviour to a custom pickaxe you will need to tell this mod about it. Register it as a tool like normal and then call ``handholds.register_pick(name, level)``. This function will then override the tool's right-click handler in order to assign the new behaviour. The specified *level* determines which nodes can be carved. If left unspecified, this value defaults to 1.


# License Information
The source code is licensed under [GNU Lesser General Public License v3.0](https://github.com/t-affeldt/handholds_redo/blob/master/LICENSE.md). Look at the included license file for more information.

The texture for the handholds node is taken from the mod [handholds](https://github.com/Ezhh/handholds) and licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). Credit for this goes to [Shara RedCat](https://forum.minetest.net/memberlist.php?mode=viewprofile&u=19807). The texture has been marginally tweaked by me for better visibility.
