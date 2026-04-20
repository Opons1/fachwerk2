--[[

	Fachwerk

	Copyright (C) 2017-2022 Joachim Stolberg
	LGPLv2.1+
	See LICENSE.txt for more information

]]--


local function register_node(name, desc, tiles)
	minetest.register_node("fachwerk2:"..name, {
		description = "Fachwerk "..desc,
		tiles = tiles,
		paramtype2 = "facedir",
		groups = {cracky=2, crumbly=2, choppy=2},
		is_ground_content = false,
		sounds = default.node_sound_wood_defaults(),
	})
end

local StonesPNG = {"fachwerk_silver_sandstone.png", "fachwerk_desert_sandstone.png", "fachwerk_desert_stone.png", "fachwerk_brick.png"}
local StonesName = {"Silver Sandstone", "Desert Sandstone", "Desert Stone", "Brick Block"}
local StonesNode = {"default:silver_sandstone", "default:desert_sandstone", "default:desert_stone", "default:brick"}

for idx,png in ipairs(StonesPNG) do
	local name = StonesName[idx]

	register_node(idx.."0", name.." 0", {png, png, png, png, png, png})
	register_node(idx.."1", name.." 1", {png.."^fachwerk7.png", png, png.."^fachwerk1.png", png.."^fachwerk1.png", png.."^fachwerk1.png^[transformFX" ,png.."^fachwerk1.png^[transformFX"})
	register_node(idx.."2", name.." 2", {png, png, png.."^fachwerk2.png", png.."^fachwerk2.png", png.."^fachwerk2.png^[transformFX" ,png.."^fachwerk2.png^[transformFX"})
	register_node(idx.."3", name.." 3", {png, png, png.."^fachwerk3.png", png.."^fachwerk3.png", png.."^fachwerk3.png^[transformFX" ,png.."^fachwerk3.png^[transformFX"})
	register_node(idx.."4", name.." 4", {png.."^fachwerk7.png", png, png.."^fachwerk4.png", png.."^fachwerk4.png", png.."^fachwerk4.png^[transformFX" ,png.."^fachwerk4.png^[transformFX"})
	register_node(idx.."5", name.." 5", {png, png, png.."^fachwerk5.png", png.."^fachwerk5.png", png.."^fachwerk5.png^[transformFX" ,png.."^fachwerk5.png^[transformFX"})
	register_node(idx.."6", name.." 6", {png.."^fachwerk7.png", png, png.."^fachwerk6.png", png.."^fachwerk6.png", png.."^fachwerk6.png^[transformFX" ,png.."^fachwerk6.png^[transformFX"})
	register_node(idx.."7", name.." 7", {png.."^fachwerk7.png", png, png.."^fachwerk9.png", png.."^fachwerk9.png", png.."^fachwerk9.png^[transformFX" ,png.."^fachwerk9.png^[transformFX"})
	register_node(idx.."8", name.." 8", {png, png, png.."^fachwerk10.png", png.."^fachwerk10.png", png.."^fachwerk10.png^[transformFX" ,png.."^fachwerk10.png^[transformFX"})
	register_node(idx.."9", name.." 9", {png.."^fachwerk7.png", png, png.."^fachwerk5.png^fachwerk1.png", png.."^fachwerk5.png^fachwerk1.png", png.."^fachwerk5.png^fachwerk1.png" ,png.."^fachwerk5.png^fachwerk1.png"})
	register_node(idx.."10", name.." 10", {png, png, png.."^fachwerk5.png^fachwerk3.png", png.."^fachwerk5.png^fachwerk3.png", png.."^fachwerk5.png^fachwerk3.png" ,png.."^fachwerk5.png^fachwerk3.png"})
	
	register_node(idx.."A", name.." A", {png, png, png.."^fachwerkA.png", png.."^fachwerkA.png^[transformFX", png.."^fachwerkA.png^[transformFX" ,png.."^fachwerkA.png"})
	register_node(idx.."B", name.." B", {png, png, png.."^fachwerkB.png", png.."^fachwerkB.png^[transformFX", png.."^fachwerkB.png^[transformFX" ,png.."^fachwerkB.png"})
	register_node(idx.."C", name.." C", {png, png, png.."^fachwerkC.png", png.."^fachwerkC.png^[transformFX", png.."^fachwerkC.png^[transformFX" ,png.."^fachwerkC.png"})
	register_node(idx.."D", name.." D", {png, png, png.."^fachwerkD.png", png.."^fachwerkD.png^[transformFX", png.."^fachwerkD.png^[transformFX" ,png.."^fachwerkD.png"})
	register_node(idx.."E", name.." E", {png, png, png.."^fachwerkE.png", png.."^fachwerkE.png", png.."^fachwerkE.png^[transformFX" ,png.."^fachwerkE.png^[transformFX"})
end

register_node("X5", " Beam", {"fachwerk7.png", "fachwerk8.png", "fachwerk7.png", "fachwerk8.png", "fachwerk7.png", "fachwerk8.png"})
register_node("W", " Holzwand", {"fachwerkW.png", "fachwerkW.png","fachwerkW.png^[transformR90", "fachwerkW.png^[transformR90", "fachwerkW.png^[transformR90", "fachwerkW.png^[transformR90"})
register_node("F", " Schindel 1", {"fachwerkF.png"})
register_node("S", " Schindel 2", {"fachwerkS.png"})
register_node("pflaster", " Pflaster", {"fachwerk_pflaster.png"})
register_node("Z", " Dachziegel", {"fachwerkZ.png"})
register_node("B", " ZiegelStein", {"fachwerk_brick.png"})

register_node("NM", " Natursteinmauer", {
	"fachwerk_stone_wall.png", 
	"fachwerk_stone_wall.png", 
	"fachwerk_stone_wall1.png",
	"fachwerk_stone_wall2.png", 
	"fachwerk_stone_wall3.png", 
	"fachwerk_stone_wall4.png"
})

register_node("NE", "Natursteinecke", {
	"fachwerk_stone_wall.png", 
	"fachwerk_stone_wall.png", 
	"fachwerk_stone_edge2.png^[transformFX",
	"fachwerk_stone_edge1.png", 
	"fachwerk_stone_edge1.png^[transformFX", 
	"fachwerk_stone_edge2.png"
})

minetest.register_node("fachwerk2:window1", {
	description = "Fachwerk Window 1",
	drawtype = "nodebox",
	tiles = {
		"fachwerk_win1_frame.png",
		"fachwerk_win1_frame.png",
		"fachwerk_win1_frame.png^[transformR90",
		"fachwerk_win1_frame.png^[transformR90",
		"fachwerk_win1.png",
		"fachwerk_win1.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=2, crumbly=2, choppy=2},
	node_box = {
		type = "fixed",
		fixed = {
			{ -8/16, -8/16, -1/32,  8/16,  8/16,  1/32},
			{ -8/16,  6/16, -1/16,  8/16,  8/16,  1/16},
			{ -8/16, -8/16, -1/16,  8/16, -6/16,  1/16},
			{ -8/16, -8/16, -1/16, -6/16,  8/16,  1/16},
			{  6/16, -8/16, -1/16,  8/16,  8/16,  1/16},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{ -0.5, -0.5, -1/16,  0.5, 0.5, 1/16},
		},
	},
	use_texture_alpha = "blend",
	sunlight_propagates = true,
	is_ground_content = false,
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("fachwerk2:window2", {
	description = "Fachwerk Window 4",
	drawtype = "nodebox",
	tiles = {
		"fachwerk_win2_frame.png",
		"fachwerk_win2_frame.png",
		"fachwerk_win2_frame.png^[transformR90",
		"fachwerk_win2_frame.png^[transformR90",
		"fachwerk_win2.png",
		"fachwerk_win2.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=2, crumbly=2, choppy=2},
	node_box = {
		type = "fixed",
		fixed = {
			{ -8/16, -8/16, -1/32,  8/16,  8/16,  1/32},
			{ -8/16,  6/16, -1/16,  8/16,  8/16,  1/16},
			{ -8/16, -8/16, -1/16,  8/16, -6/16,  1/16},
			{ -8/16, -8/16, -1/16, -6/16,  8/16,  1/16},
			{  6/16, -8/16, -1/16,  8/16,  8/16,  1/16},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{ -0.5, -0.5, -1/16,  0.5, 0.5, 1/16},
		},
	},
	use_texture_alpha = "blend",
	light_source = 0,
	sunlight_propagates = true,
	is_ground_content = false,
	sounds = default.node_sound_wood_defaults(),
})

-- crafts (all renamed)

minetest.register_craft({
	output = "fachwerk2:X5 8",
	recipe = {
		{"default:pine_tree", "", "default:pine_tree"},
		{"", "", ""},
		{"default:pine_tree", "", "default:pine_tree"},
	}
})

minetest.register_craft({
	output = "fachwerk2:F 4",
	recipe = {
		{"", "fachwerk2:X5", "fachwerk2:X5"},
		{"", "fachwerk2:X5", "fachwerk2:X5"},
		{"", "", ""},
	}
})

minetest.register_craft({
	type="shapeless",
	output = "fachwerk2:Z",
	recipe = {"fachwerk2:B"}
})

minetest.register_craft({
	output = "fachwerk2:B 2",
	recipe = {
		{"default:clay_brick","default:clay_brick","default:clay_brick"},
		{"default:clay_brick","default:clay_brick","default:clay_brick"},
		{"default:clay_brick","default:clay_brick","default:clay_brick"},
	}
})

minetest.register_craft({
	output = "fachwerk2:W 4",
	recipe = {
		{"", "default:pine_tree", "default:pine_wood"},
		{"", "default:pine_wood", "default:pine_tree"},
		{"", "", ""},
	}
})

minetest.register_craft({
	output = "fachwerk2:S",
	recipe = {{"fachwerk2:F"}}
})

minetest.register_craft({
	output = "fachwerk2:F",
	recipe = {{"fachwerk2:S"}}
})

minetest.register_craft({
	output = "fachwerk2:pflaster 4",
	recipe = {{"default:cobble","default:desert_cobble"},
	          {"default:sandstone","default:gravel"}}
})

minetest.register_craft({
	output = "fachwerk2:NM",
	recipe = {{"fachwerk2:pflaster"}}
})

minetest.register_craft({
	output = "fachwerk2:NE",
	recipe = {{"fachwerk2:NM"}}
})

minetest.register_craft({
	output = "fachwerk2:window1 2",
	recipe = {{"fachwerk2:X5","default:glass"}}
})

minetest.register_craft({
	output = "fachwerk2:window2",
	recipe = {{"fachwerk2:window1","dye:white"}}
})

-- remove unused
minetest.unregister_item("fachwerk2:40")
