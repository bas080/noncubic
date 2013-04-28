-- NonCubic Blocks MOD v1.1
------------by yves_de_beck




-- HERE YOU CAN CHANGE THE DETAIL-LEVEL:
----------------------------------------
detail_level = 5



-- Includes:
------------
dofile(minetest.get_modpath("noncubic").."/mill.lua")


-- VAR DECLARATION:
-------------------
noncubic = {}


-- REGISTER NONCUBIC FORMS, CREATE MODELS AND RECIPES:
------------------------------------------------------

-- SLOPE
--------
function noncubic.register_slope(subname, recipeitem, groups, images, description)

local slopebox = {}
local detail = detail_level
for i = 0, detail-1 do
	slopebox[i+1]={-0.5, (i/detail)-0.5, (i/detail)-0.5, 0.5, (i/detail)-0.5+(1/detail), 0.5}
end
minetest.register_node("noncubic:slope_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = slopebox,
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:slope_' .. subname .. ' 6',
		recipe = {
			{recipeitem, "", ""},
			{recipeitem, recipeitem, ""},
			{recipeitem, recipeitem, recipeitem},		
		},
	})
	minetest.register_craft({
		output = 'noncubic:slope_' .. subname .. ' 6',
		recipe = {
			{"", "", recipeitem},
			{"", recipeitem, recipeitem},
			{recipeitem, recipeitem, recipeitem},		
		},
	})

end


-- SLOPE UPSIDE DOWN
--------------------
function noncubic.register_slope_upsdown(subname, recipeitem, groups, images, description)

local slopeupdwnbox = {}
local detail = detail_level
for i = 0, detail-1 do
	slopeupdwnbox[i+1]={-0.5, (i/detail)-0.5, (-1*(i/detail))+0.5, 0.5, (i/detail)-0.5+(1/detail), 0.5}
end
minetest.register_node("noncubic:slope_upsdown_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = slopeupdwnbox,
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:slope_upsdown_' .. subname .. ' 6',
		recipe = {
			{recipeitem, recipeitem, recipeitem},
			{"", recipeitem, recipeitem},	
			{"", "", recipeitem},	
		},
	})
	minetest.register_craft({
		output = 'noncubic:slope_upsdown_' .. subname .. ' 6',
		recipe = {
			{recipeitem, recipeitem, recipeitem},
			{recipeitem, recipeitem, ""},	
			{recipeitem, "", ""},	
		},
	})

end


-- SLOPE EDGE
-------------
function noncubic.register_slope_edge(subname, recipeitem, groups, images, description)

local slopeboxedge = {}
local detail = detail_level
for i = 0, detail-1 do
	slopeboxedge[i+1]={(i/detail)-0.5, -0.5, (i/detail)-0.5, 0.5, (i/detail)-0.5+(1/detail), 0.5}
end
minetest.register_node("noncubic:slope_edge_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = slopeboxedge,
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:slope_edge_' .. subname .. ' 3',
		recipe = {
			{"", "", ""},
			{recipeitem, "", ""},
			{recipeitem, recipeitem, ""},		
		},
	})
	minetest.register_craft({
		output = 'noncubic:slope_edge_' .. subname .. ' 3',
		recipe = {
			{"", "", ""},
			{"", "", recipeitem},
			{"", recipeitem, recipeitem},		
		},
	})

end


-- SLOPE INNER EDGE
-------------------
function noncubic.register_slope_inner_edge(subname, recipeitem, groups, images, description)

local slopeboxedge = {}
local detail = detail_level
for i = 0, detail-1 do
	slopeboxedge[i+1]={(i/detail)-0.5, -0.5, -0.5, 0.5, (i/detail)-0.5+(1/detail), 0.5}
	slopeboxedge[i+detail+1]={-0.5, -0.5, (i/detail)-0.5, 0.5, (i/detail)-0.5+(1/detail), 0.5}
end

minetest.register_node("noncubic:slope_inner_edge_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = slopeboxedge,
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:slope_inner_edge_' .. subname .. ' 3',
		recipe = {
			{"", "", recipeitem},
			{recipeitem, "", ""},
			{recipeitem, recipeitem, ""},		
		},
	})
	minetest.register_craft({
		output = 'noncubic:slope_inner_edge_' .. subname .. ' 3',
		recipe = {
			{recipeitem, "", ""},
			{"", "", recipeitem},
			{"", recipeitem, recipeitem},		
		},
	})

end


-- SLOPE EDGE UPSIDE DOWN
-------------------------
function noncubic.register_slope_upsdown_edge(subname, recipeitem, groups, images, description)

local slopeupdwnboxedge = {}
local detail = detail_level
for i = 0, detail-1 do
	slopeupdwnboxedge[i+1]={(-1*(i/detail))+0.5, (i/detail)-0.5, (-1*(i/detail))+0.5, 0.5, (i/detail)-0.5+(1/detail), 0.5}
end
minetest.register_node("noncubic:slope_upsdown_edge_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = slopeupdwnboxedge,
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:slope_upsdown_edge_' .. subname .. ' 3',
		recipe = {
			{"", recipeitem, recipeitem},
			{"", "", recipeitem},	
			{"", "", ""},	
		},
	})
	minetest.register_craft({
		output = 'noncubic:slope_upsdown_edge_' .. subname .. ' 3',
		recipe = {
			{recipeitem, recipeitem, ""},
			{recipeitem, "", ""},	
			{"", "", ""},	
		},
	})

end


-- SLOPE INNER EDGE UPSIDE DOWN
-------------------------------
function noncubic.register_slope_upsdown_inner_edge(subname, recipeitem, groups, images, description)

local slopeboxedge = {}
local detail = detail_level
for i = 0, detail-1 do
	slopeboxedge[i+1]={0.5-(i/detail)-(1/detail), (i/detail)-0.5, -0.5, 0.5, (i/detail)-0.5+(1/detail), 0.5}
	slopeboxedge[i+detail+1]={-0.5, (i/detail)-0.5, 0.5-(i/detail)-(1/detail), 0.5, (i/detail)-0.5+(1/detail), 0.5}
end

minetest.register_node("noncubic:slope_upsdown_inner_edge_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = slopeboxedge,
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:slope_upsdown_inner_edge_' .. subname .. ' 3',
		recipe = {
			{"", recipeitem, recipeitem},
			{"", "", recipeitem},
			{recipeitem, "", ""},		
		},
	})
	minetest.register_craft({
		output = 'noncubic:slope_upsdown_inner_edge_' .. subname .. ' 3',
		recipe = {
			{recipeitem, recipeitem, ""},
			{recipeitem, "", ""},
			{"", "", recipeitem},		
		},
	})

end


-- PYRAMID
----------
function noncubic.register_pyramid(subname, recipeitem, groups, images, description)

local pyrabox = {}
local detail = detail_level/2
for i = 0, detail-1 do
	pyrabox[i+1]={(i/detail/2)-0.5, (i/detail/2)-0.5, (i/detail/2)-0.5, 0.5-(i/detail/2), (i/detail/2)-0.5+(1/detail), 0.5-(i/detail/2)}
end
minetest.register_node("noncubic:pyramid_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = pyrabox,
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:pyramid_' .. subname .. ' 3',
		recipe = {
			{"", "", ""},
			{"", recipeitem, ""},
			{recipeitem, "", recipeitem},		
		},
	})

end


-- SPIKE
--------
function noncubic.register_spike(subname, recipeitem, groups, images, description)

local spikebox = {}
local detail = detail_level
for i = 0, detail-1 do
	spikebox[i+1]={(i/detail/2)-0.5, (i/detail/2)-0.5, (i/detail/2)-0.5, 0.5-(i/detail/2), (i/detail)-0.5+(1/detail), 0.5-(i/detail/2)}
end
minetest.register_node("noncubic:spike_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = spikebox,
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:spike_' .. subname .. ' 5',
		recipe = {
			{"", recipeitem, ""},
			{recipeitem, "", recipeitem},
			{recipeitem, "", recipeitem},		
		},
	})

end


-- Cylinder
-----------
function noncubic.register_cylinder(subname, recipeitem, groups, images, description)

local cylbox = {}
local detail = detail_level
local sehne
for i = 1, detail-1 do
	sehne = math.sqrt(0.25 - (((i/detail)-0.5)^2))
	cylbox[i]={(i/detail)-0.5, -0.5, -sehne, (i/detail)+(1/detail)-0.5, 0.5, sehne}
end
minetest.register_node("noncubic:cylinder_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = cylbox,
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:cylinder_' .. subname .. ' 6',
		recipe = {
			{recipeitem, recipeitem, ""},
			{recipeitem, recipeitem, ""},
			{recipeitem, recipeitem, ""},		
		},
	})
	minetest.register_craft({
		output = 'noncubic:cylinder_' .. subname .. ' 1',
		recipe = {
			{"", "", ""},
			{"", 'noncubic:cylinder_horizontal_' .. subname, ""},
			{"", "", ""},		
		},
	})

end


-- Cylinder Horizontal
----------------------
function noncubic.register_cylinder_horizontal(subname, recipeitem, groups, images, description)

local cylbox_horizontal = {}
local detail = detail_level
local sehne
for i = 1, detail-1 do
	sehne = math.sqrt(0.25 - (((i/detail)-0.5)^2))
	cylbox_horizontal[i]={-0.5, (i/detail)-0.5, -sehne, 0.5, (i/detail)+(1/detail)-0.5, sehne}
end
minetest.register_node("noncubic:cylinder_horizontal_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = cylbox_horizontal,
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:cylinder_horizontal_' .. subname .. ' 6',
		recipe = {
			{"", "", ""},
			{recipeitem, recipeitem, recipeitem},
			{recipeitem, recipeitem, recipeitem},		
		},
	})
	minetest.register_craft({
		output = 'noncubic:cylinder_horizontal_' .. subname .. ' 1',
		recipe = {
			{"", "", ""},
			{"", 'noncubic:cylinder_' .. subname, ""},
			{"", "", ""},		
		},
	})

end


-- Sphere
---------
function noncubic.register_sphere(subname, recipeitem, groups, images, description)

local spherebox = {}
local detail = detail_level
local sehne
for i = 1, detail-1 do
	sehne = math.sqrt(0.25 - (((i/detail)-0.5)^2))
	spherebox[i]={-sehne, (i/detail)-0.5, -sehne, sehne, (i/detail)+(1/detail)-0.5, sehne}
end
minetest.register_node("noncubic:cylinder_sphere_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = spherebox,
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:cylinder_sphere_' .. subname .. ' 4',
		recipe = {
			{"", recipeitem, ""},
			{recipeitem, "", recipeitem},
			{"", recipeitem, ""},		
		},
	})

end


-- Element straight
-------------------
function noncubic.register_element_straight(subname, recipeitem, groups, images, description)

minetest.register_node("noncubic:element_straight_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.5, 0.3, 0, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.5, 0.3, 0, 0.5},
			},
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:element_straight_' .. subname .. ' 12',
		recipe = {
			{"", recipeitem, ""},
			{"", recipeitem, ""},
			{"", recipeitem, ""},		
		},
	})

end


-- Element Edge
---------------
function noncubic.register_element_edge(subname, recipeitem, groups, images, description)

minetest.register_node("noncubic:element_edge_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.5, 0.3, 0, 0.3},
			{-0.5, -0.5, -0.3, -0.3, 0, 0.3},
			},
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.5, 0.3, 0, 0.3},
			{-0.5, -0.5, -0.3, -0.3, 0, 0.3},
			},
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:element_edge_' .. subname .. ' 10',
		recipe = {
			{recipeitem, recipeitem, recipeitem},
			{"", "", recipeitem},
			{"", "", recipeitem},		
			},
	})

end


-- Element T
------------
function noncubic.register_element_t(subname, recipeitem, groups, images, description)

minetest.register_node("noncubic:element_t_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.5, 0.3, 0, 0.3},
			{-0.5, -0.5, -0.3, -0.3, 0, 0.3},
			{0.3, -0.5, -0.3, 0.5, 0, 0.3},
			},
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.5, 0.3, 0, 0.3},
			{-0.5, -0.5, -0.3, -0.3, 0, 0.3},
			{0.3, -0.5, -0.3, 0.5, 0, 0.3},
			},
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:element_t_' .. subname .. ' 8',
		recipe = {
			{"", "", ""},
			{recipeitem, recipeitem, recipeitem},
			{"", recipeitem, ""},		
			},
	})

end


-- Element Cross
----------------
function noncubic.register_element_cross(subname, recipeitem, groups, images, description)

minetest.register_node("noncubic:element_cross_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {
			{0.3, -0.5, -0.3, 0.5, 0, 0.3},
			{-0.3, -0.5, -0.5, 0.3, 0, 0.5},
			{-0.5, -0.5, -0.3, -0.3, 0, 0.3},
			},
	},
	node_box = {
		type = "fixed",
		fixed = {
			{0.3, -0.5, -0.3, 0.5, 0, 0.3},
			{-0.3, -0.5, -0.5, 0.3, 0, 0.5},
			{-0.5, -0.5, -0.3, -0.3, 0, 0.3},
			},
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:element_cross_' .. subname .. ' 10',
		recipe = {
			{"", recipeitem, ""},
			{recipeitem, recipeitem, recipeitem},
			{"", recipeitem, ""},		
			},
	})

end


-- Element End
--------------
function noncubic.register_element_end(subname, recipeitem, groups, images, description)

minetest.register_node("noncubic:element_end_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0, 0.5},
	},
	groups = groups,
	})
	minetest.register_craft({
		output = 'noncubic:element_end_' .. subname .. ' 8',
		recipe = {
			{"", "", ""},
			{"", recipeitem, ""},
			{"", recipeitem, ""},		
			},
	})

end


-- Element straight DOUBLE
--------------------------
function noncubic.register_element_straight_double(subname3, recipeitem3, groups3, images3, description3)

minetest.register_node("noncubic:element_straight_double_" .. subname3, {
	description = description3,
	drawtype = "nodebox",
	tiles = images3,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.5, 0.3, 0.5, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.5, 0.3, 0.5, 0.5},
			},
	},
	groups = groups3,
	})
	minetest.register_craft({
		output = 'noncubic:element_straight_double_' .. subname3 .. ' 1',
		recipe = {
			{"", "", ""},
			{"", 'noncubic:element_straight_' .. recipeitem3, ""},
			{"", 'noncubic:element_straight_' .. recipeitem3, ""},		
		},
	})

end


-- Element Edge DOUBLE
----------------------
function noncubic.register_element_edge_double(subname3, recipeitem3, groups3, images3, description3)

minetest.register_node("noncubic:element_edge_double_" .. subname3, {
	description = description3,
	drawtype = "nodebox",
	tiles = images3,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.5, 0.3, 0.5, 0.3},
			{-0.5, -0.5, -0.3, -0.3, 0.5, 0.3},
			},
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.5, 0.3, 0.5, 0.3},
			{-0.5, -0.5, -0.3, -0.3, 0.5, 0.3},
			},
	},
	groups = groups3,
	})
	minetest.register_craft({
		output = 'noncubic:element_edge_double_' .. subname3 .. ' 1',
		recipe = {
			{"", "", ""},
			{"", 'noncubic:element_edge_' .. recipeitem3, ""},
			{"", 'noncubic:element_edge_' .. recipeitem3, ""},		
		},
	})

end


-- Element T DOUBLE
-------------------
function noncubic.register_element_t_double(subname3, recipeitem3, groups3, images3, description3)

minetest.register_node("noncubic:element_element_t_double_" .. subname3, {
	description = description3,
	drawtype = "nodebox",
	tiles = images3,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.5, 0.3, 0.5, 0.3},
			{-0.5, -0.5, -0.3, -0.3, 0.5, 0.3},
			{0.3, -0.5, -0.3, 0.5, 0.5, 0.3},
			},
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.5, 0.3, 0.5, 0.3},
			{-0.5, -0.5, -0.3, -0.3, 0.5, 0.3},
			{0.3, -0.5, -0.3, 0.5, 0.5, 0.3},
			},
	},
	groups = groups3,
	})
	minetest.register_craft({
		output = 'noncubic:element_element_t_double_' .. subname3 .. ' 1',
		recipe = {
			{"", "", ""},
			{"", 'noncubic:element_t_' .. recipeitem3, ""},
			{"", 'noncubic:element_t_' .. recipeitem3, ""},		
		},
	})

end


-- Element Cross Double
-----------------------
function noncubic.register_element_cross_double(subname3, recipeitem3, groups3, images3, description3)

minetest.register_node("noncubic:element_cross_double_" .. subname3, {
	description = description3,
	drawtype = "nodebox",
	tiles = images3,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {
			{0.3, -0.5, -0.3, 0.5, 0.5, 0.3},
			{-0.3, -0.5, -0.5, 0.3, 0.5, 0.5},
			{-0.5, -0.5, -0.3, -0.3, 0.5, 0.3},
			},
	},
	node_box = {
		type = "fixed",
		fixed = {
			{0.3, -0.5, -0.3, 0.5, 0.5, 0.3},
			{-0.3, -0.5, -0.5, 0.3, 0.5, 0.5},
			{-0.5, -0.5, -0.3, -0.3, 0.5, 0.3},
			},
	},
	groups = groups3,
	})
	minetest.register_craft({
		output = 'noncubic:element_cross_double_' .. subname3 .. ' 1',
		recipe = {
			{"", "", ""},
			{"", 'noncubic:element_cross_' .. recipeitem3, ""},
			{"", 'noncubic:element_cross_' .. recipeitem3, ""},		
			},
	})

end


-- Element End Double
---------------------
function noncubic.register_element_end_double(subname3, recipeitem3, groups3, images3, description3)

minetest.register_node("noncubic:element_end_double_" .. subname3, {
	description = description3,
	drawtype = "nodebox",
	tiles = images3,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.5},
	},
	groups = groups3,
	})
	minetest.register_craft({
		output = 'noncubic:element_end_double_' .. subname3 .. ' 1',
		recipe = {
			{"", "", ""},
			{"", 'noncubic:element_end_' .. recipeitem3, ""},
			{"", 'noncubic:element_end_' .. recipeitem3, ""},		
			},
	})

end


-- STICK
--------
function noncubic.register_stick(subname2, recipeitem2, groups2, images2, description2)

minetest.register_node("noncubic:stick_" .. subname2, {
	description = description2,
	drawtype = "nodebox",
	tiles = images2,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.15, -0.5, -0.15, 0.15, 0.5, 0.15},
	},
	node_box = {
		type = "fixed",
		fixed = {-0.15, -0.5, -0.15, 0.15, 0.5, 0.15},
	},
	groups = groups2,
	})
	minetest.register_craft({
		output = 'noncubic:stick_' .. subname2 .. ' 8',
		recipe = {
			{'default:stick', "", ""},
			{"", "", ""},
			{recipeitem2, "", ""},		
		},
	})

end



-- REGISTER NEW NONCUBIC's PART 2: noncubic.register_element_end(subname, recipeitem, groups, images, desc_element_xyz)
-----------------------------------------------------------------------------------------------------------------------
function noncubic.register_slope_edge_etc(subname, recipeitem, groups, images, desc_slope, desc_slope_upsdown, desc_slope_edge, desc_slope_inner_edge, desc_slope_upsdwn_edge, desc_slope_upsdwn_inner_edge, desc_pyramid, desc_spike, desc_cylinder, desc_cylinder_horizontal, desc_sphere, desc_element_straight, desc_element_edge, desc_element_t, desc_element_cross, desc_element_end)
         noncubic.register_slope(subname, recipeitem, groups, images, desc_slope)
	 noncubic.register_slope_upsdown(subname, recipeitem, groups, images, desc_slope_upsdown)
         noncubic.register_slope_edge(subname, recipeitem, groups, images, desc_slope_edge)
         noncubic.register_slope_inner_edge(subname, recipeitem, groups, images, desc_slope_inner_edge)
	 noncubic.register_slope_upsdown_edge(subname, recipeitem, groups, images, desc_slope_upsdwn_edge)
	 noncubic.register_slope_upsdown_inner_edge(subname, recipeitem, groups, images, desc_slope_upsdwn_inner_edge)
         noncubic.register_pyramid(subname, recipeitem, groups, images, desc_pyramid)
         noncubic.register_spike(subname, recipeitem, groups, images, desc_spike)
         noncubic.register_cylinder(subname, recipeitem, groups, images, desc_cylinder)
         noncubic.register_cylinder_horizontal(subname, recipeitem, groups, images, desc_cylinder_horizontal)
	 noncubic.register_sphere(subname, recipeitem, groups, images, desc_sphere)
	 noncubic.register_element_straight(subname, recipeitem, groups, images, desc_element_straight)
	 noncubic.register_element_edge(subname, recipeitem, groups, images, desc_element_edge)
	 noncubic.register_element_t(subname, recipeitem, groups, images, desc_element_t)
	 noncubic.register_element_cross(subname, recipeitem, groups, images, desc_element_cross)
	 noncubic.register_element_end(subname, recipeitem, groups, images, desc_element_end)
end


-- REGISTER MATERIALS AND PROPERTIES FOR NONCUBIC ELEMENTS:
-----------------------------------------------------------

-- WOOD
-------
noncubic.register_slope_edge_etc("wood", "stairs:stair_wood",
                {snappy=2,choppy=2,oddly_breakable_by_hand=2},
                {"default_wood.png"},
                "Wooden Slope",
		"Wooden Slope Upside Down",
                "Wooden Slope Edge",
                "Wooden Slope Inner Edge",
		"Wooden Slope Upside Down Edge",
		"Wooden Slope Upside Down Inner Edge",
		"Wooden Pyramid",
		"Wooden Spike",
		"Wooden Cylinder",
		"Wooden Cylinder Horizontal",
		"Wooden Sphere",
		"Wooden Element Straight",
		"Wooden Element Edge",
		"Wooden Element T",
		"Wooden Element Cross",
		"Wooden Element End")
-- STONE
--------
noncubic.register_slope_edge_etc("stone", "stairs:stair_stone",
                {cracky=3},
                {"default_stone.png"},
                "Stone Slope",
		"Stone Slope Upside Down",
                "Stone Slope Edge",
                "Stone Slope Inner Edge",
		"Stone Slope Upside Down Edge",
		"Stone Slope Upside Down Inner Edge",
		"Stone Pyramid",
		"Stone Spike",
		"Stone Cylinder",
		"Stote Cylinder Horizontal",
		"Stone Sphere",
		"Stone Element Straight",
		"Stone Element Edge",
		"Stone Element T",
		"Stone Element Cross",
		"Stone Element End")
-- COBBLE
---------
noncubic.register_slope_edge_etc("cobble", "stairs:stair_cobble",
                {cracky=3},
                {"default_cobble.png"},
                "Cobble Slope",
		"Cobble Slope Upside Down",
                "Cobble Slope Edge",
                "Cobble Slope Inner Edge",
		"Cobble Slope Upside Down Edge",
		"Cobble Slope Upside Down Inner Edge",
		"Cobble Pyramid",
		"Cobble Spike",
		"Cobble Cylinder",
		"Cobble Cylinder Horizontal",
		"Cobble Sphere",
		"Cobble Element Straight",
		"Cobble Element Edge",
		"Cobble Element T",
		"Cobble Element Cross",
		"Cobble Element End")
-- BRICK
--------
noncubic.register_slope_edge_etc("brick", "stairs:stair_brick",
                {cracky=3},
                {"default_brick.png"},
                "Brick Slope",
		"Brick Slope Upside Down",
                "Brick Slope Edge",
                "Brick Slope Inner Edge",
		"Brick Slope Upside Down Edge",
		"Brick Slope Upside Down Inner Edge",
		"Brick Pyramid",
		"Brick Spike",
		"Brick Cylinder",
		"Brick Cylinder Horizontal",
		"Brick Sphere",
		"Brick Element Straight",
		"Brick Element Edge",
		"Brick Element T",
		"Brick Element Cross",
		"Brick Element End")
-- SANDSTONE
------------
noncubic.register_slope_edge_etc("sandstone", "stairs:stair_sandstone",
                {crumbly=2,cracky=2},
                {"default_sandstone.png"},
                "Sandstone Slope",
		"Sandstone Slope Upside Down",
                "Sandstone Slope Edge",
                "Sandstone Slope Inner Edge",
		"Sandstone Slope Upside Down Edge",
		"Sandstone Slope Upside Down Inner Edge",
		"Sandstone Pyramid",
		"Sandstone Spike",
		"Sandstone Cylinder",
		"Sandstone Cylinder Horizontal",
		"Sandstone Sphere",
		"Sandstone Element Straight",
		"Sandstone Element Edge",
		"Sandstone Element T",
		"Sandstone Element Cross",
		"Sandstone Element End")
-- LEAVES
---------
noncubic.register_slope_edge_etc("leaves", "default:leaves",
                {snappy=2,choppy=2,oddly_breakable_by_hand=3},
                {"bucharest_tree.png"},
                "Leaves Slope",
		"Leaves Slope Upside Down",
                "Leaves Slope Edge",
                "Leaves Slope Inner Edge",
		"Leaves Slope Upside Down Edge",
		"Leaves Slope Upside Down Inner Edge",
		"Leaves Pyramid",
		"Leaves Spike",
		"Leaves Cylinder",
		"Leaves Cylinder Horizontal",
		"Leaves Sphere",
		"Leaves Element Straight",
		"Leaves Element Edge",
		"Leaves Element T",
		"Leaves Element Cross",
		"Leaves Element End")
-- DIRT
-------
noncubic.register_slope_edge_etc("dirt", "default:dirt",
                {snappy=2,choppy=2,oddly_breakable_by_hand=3},
                {"default_dirt.png"},
                "Dirt Slope",
		"Dirt Slope Upside Down",
                "Dirt Slope Edge",
                "Leaves Slope Inner Edge",
		"Dirt Slope Upside Down Edge",
		"Dirt Slope Upside Down Inner Edge",
		"Dirt Pyramid",
		"Dirt Spike",
		"Dirt Cylinder",
		"Dirt Cylinder Horizontal",
		"Dirt Sphere",
		"Dirt Element Straight",
		"Dirt Element Edge",
		"Dirt Element T",
		"Dirt Element Cross",
		"Dirt Element End")
-- GLASS
--------
noncubic.register_slope_edge_etc("glass", "default:glass",
                {snappy=2,choppy=2,oddly_breakable_by_hand=2},
                {"default_glass.png"},
                "Glass Slope",
		"Glass Slope Upside Down",
                "Glass Slope Edge",
                "Glass Slope Inner Edge",
		"Glass Slope Upside Down Edge",
		"Glass Slope Upside Down Inner Edge",
		"Glass Pyramid",
		"Glass Spike",
		"Glass Cylinder",
		"Glass Cylinder Horizontal",
		"Glass Sphere",
		"Glass Element Straight",
		"Glass Element Edge",
		"Glass Element T",
		"Glass Element Cross",
		"Glass Element End")


-- REGISTER DOUBLE ELEMNTS: noncubic.register_xyz(subname2, recipeitem2, groups2, images2, desc_element_xyz)
------------------------------------------------------------------------------------------------------------
function noncubic.register_stick_etc(subname2, recipeitem2, groups2, images2, desc_stick)
         noncubic.register_stick(subname2, recipeitem2, groups2, images2, desc_stick)
end

-- REGISTER STICKS: noncubic.register_xyz(subname3, recipeitem3, groups3, images3, desc_element_xyz)
----------------------------------------------------------------------------------------------------
function noncubic.register_elements(subname3, recipeitem3, groups3, images3, desc_element_straight_double, desc_element_edge_double, desc_element_t_double, desc_element_cross_double, desc_element_end_double)
         noncubic.register_element_straight_double(subname3, recipeitem3, groups3, images3, desc_element_straight_double)
         noncubic.register_element_edge_double(subname3, recipeitem3, groups3, images3, desc_element_edge_double)
         noncubic.register_element_t_double(subname3, recipeitem3, groups3, images3, desc_element_t_double)
         noncubic.register_element_cross_double(subname3, recipeitem3, groups3, images3, desc_element_cross_double)
         noncubic.register_element_end_double(subname3, recipeitem3, groups3, images3, desc_element_end_double)
end

function noncubic.register_roof(subname, recipeitem, groups, images , description)
  noncubic.register_slope_edge(subname, recipeitem, groups, images, description)
  noncubic.register_slope_inner_edge(subname, recipeitem, groups, images, description)
  noncubic.register_slope(subname, recipeitem, groups, images, description)
end

dofile(minetest.get_modpath("noncubic").."/bas080.lua")
dofile(minetest.get_modpath("noncubic").."/register.lua")