--API functions
---------------
--Single node
-------------
--noncubic.register_slope(subname, recipeitem, groups, images, description)
--noncubic.register_slope_upsdown(subname, recipeitem, groups, images, description)
--noncubic.register_slope_edge(subname, recipeitem, groups, images, description)
--noncubic.register_slope_inner_edge(subname, recipeitem, groups, images, description)
--noncubic.register_slope_upsdown_edge = function(subname, recipeitem, groups, images, description)
--noncubic.register_slope_upsdown_inner_edge(subname, recipeitem, groups, images,
--noncubic.register_pyramid(subname, recipeitem, groups, images, description)
--noncubic.register_spike(subname, recipeitem, groups, images, description)
--noncubic.register_cylinder = function(subname, recipeitem, groups, images, description)
--noncubic.register_slope = function(subname, recipeitem, groups, images, description)
--noncubic.register_sphere = function(subname, recipeitem, groups, images, description)
--noncubic.register_element_straight = function(subname, recipeitem, groups, images, description)
--noncubic.register_element_t = function(subname, recipeitem, groups, images, description)
--noncubic.register_element_cross(subname, recipeitem, groups, images, description)
--noncubic.register_element_end(subname, recipeitem, groups, images, description)
--noncubic.register_element_straight_double(subname3, recipeitem3, groups3, images3,
--noncubic.register_element_edge_double(subname3, recipeitem3, groups3, images3, description3)
--noncubic.register_element_t_double(subname3, recipeitem3, groups3, images3, description3)
--noncubic.register_element_cross_double(subname3, recipeitem3, groups3, images3, description3)
--noncubic.register_element_end_double(subname3, recipeitem3, groups3, images3, description3)
--noncubic.register_stick(subname2, recipeitem2, groups2, images2, description2)

--Group nodes
-------------
--noncubic.register_all(subname, recipeitem, groups, images, desc_slope, desc_slope_upsdown, desc_slope_edge, desc_slope_inner_edge, desc_slope_upsdwn_edge, desc_slope_upsdwn_inner_edge, desc_pyramid, desc_spike, desc_cylinder, desc_cylinder_horizontal, desc_sphere, desc_element_straight, desc_element_edge, desc_element_t, desc_element_cross, desc_element_end)
--noncubic.register_roof(subname, recipeitem, groups, images , description)

noncubic.register_slope = function(subname, recipeitem, groups, images, description)
  local slopebox = {}
  local detail = detail_level
  for i = 0, detail-1 do
    slopebox[i+1]={-0.5, (i/detail)-0.5, (i/detail)-0.5, 0.5, (i/detail)-0.5+(1/detail), 0.5}
  end
  minetest.register_node("noncubic:slope_" .. subname, {
    description = description.. " Slope",
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

noncubic.register_slope_upsdown = function(subname, recipeitem, groups, images, description)
  local slopeupdwnbox = {}
  local detail = detail_level
  for i = 0, detail-1 do
    slopeupdwnbox[i+1]={-0.5, (i/detail)-0.5, (-1*(i/detail))+0.5, 0.5, (i/detail)-0.5+(1/detail), 0.5}
  end
  minetest.register_node("noncubic:slope_upsdown_" .. subname, {
    description = description.. " Upside Down Slope",
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

noncubic.register_slope_edge = function(subname, recipeitem, groups, images, description)
  local slopeboxedge = {}
  local detail = detail_level
  for i = 0, detail-1 do
    slopeboxedge[i+1]={(i/detail)-0.5, -0.5, (i/detail)-0.5, 0.5, (i/detail)-0.5+(1/detail), 0.5}
  end
  minetest.register_node("noncubic:slope_edge_" .. subname, {
    description = description.. " Slope Edge",
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

noncubic.register_slope_inner_edge = function(subname, recipeitem, groups, images, description)
  local slopeboxedge = {}
  local detail = detail_level
  for i = 0, detail-1 do
    slopeboxedge[i+1]={(i/detail)-0.5, -0.5, -0.5, 0.5, (i/detail)-0.5+(1/detail), 0.5}
    slopeboxedge[i+detail+1]={-0.5, -0.5, (i/detail)-0.5, 0.5, (i/detail)-0.5+(1/detail), 0.5}
  end
  minetest.register_node("noncubic:slope_inner_edge_" .. subname, {
    description = description.. " Slope Inner Edge",
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

noncubic.register_slope_upsdown_edge = function(subname, recipeitem, groups, images, description)

  local slopeupdwnboxedge = {}
  local detail = detail_level
  for i = 0, detail-1 do
    slopeupdwnboxedge[i+1]={(-1*(i/detail))+0.5, (i/detail)-0.5, (-1*(i/detail))+0.5, 0.5, (i/detail)-0.5+(1/detail), 0.5}
  end
  minetest.register_node("noncubic:slope_upsdown_edge_" .. subname, {
    description = description.. " Upside Down Slope Edge",
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

noncubic.register_slope_upsdown_inner_edge = function(subname, recipeitem, groups, images, description)
  local slopeboxedge = {}
  local detail = detail_level
  for i = 0, detail-1 do
    slopeboxedge[i+1]={0.5-(i/detail)-(1/detail), (i/detail)-0.5, -0.5, 0.5, (i/detail)-0.5+(1/detail), 0.5}
    slopeboxedge[i+detail+1]={-0.5, (i/detail)-0.5, 0.5-(i/detail)-(1/detail), 0.5, (i/detail)-0.5+(1/detail), 0.5}
  end
  minetest.register_node("noncubic:slope_upsdown_inner_edge_" .. subname, {
    description = description.. " Upside Down Inner Slope Edge",
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

noncubic.register_pyramid = function(subname, recipeitem, groups, images, description)
  local pyrabox = {}
  local detail = detail_level/2
  for i = 0, detail-1 do
    pyrabox[i+1]={(i/detail/2)-0.5, (i/detail/2)-0.5, (i/detail/2)-0.5, 0.5-(i/detail/2), (i/detail/2)-0.5+(1/detail), 0.5-(i/detail/2)}
  end
  minetest.register_node("noncubic:pyramid_" .. subname, {
    description = description.. " Pyramid",
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

noncubic.register_spike = function(subname, recipeitem, groups, images, description)
  local spikebox = {}
  local detail = detail_level
  for i = 0, detail-1 do
    spikebox[i+1]={(i/detail/2)-0.5, (i/detail/2)-0.5, (i/detail/2)-0.5, 0.5-(i/detail/2), (i/detail)-0.5+(1/detail), 0.5-(i/detail/2)}
  end
  minetest.register_node("noncubic:spike_" .. subname, {
    description = description.. " Spike",
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

noncubic.register_cylinder = function(subname, recipeitem, groups, images, description)
  local cylbox = {}
  local detail = detail_level
  local sehne
  for i = 1, detail-1 do
    sehne = math.sqrt(0.25 - (((i/detail)-0.5)^2))
    cylbox[i]={(i/detail)-0.5, -0.5, -sehne, (i/detail)+(1/detail)-0.5, 0.5, sehne}
  end
  minetest.register_node("noncubic:cylinder_" .. subname, {
    description = description.. " Cylinder",
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

noncubic.register_cylinder_horizontal = function(subname, recipeitem, groups, images, description)
  local cylbox_horizontal = {}
  local detail = detail_level
  local sehne
  for i = 1, detail-1 do
    sehne = math.sqrt(0.25 - (((i/detail)-0.5)^2))
    cylbox_horizontal[i]={-0.5, (i/detail)-0.5, -sehne, 0.5, (i/detail)+(1/detail)-0.5, sehne}
  end
  minetest.register_node("noncubic:cylinder_horizontal_" .. subname, {
    description = description.. " Horizontal Cylinder",
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

noncubic.register_sphere = function(subname, recipeitem, groups, images, description)
  local spherebox = {}
  local detail = detail_level
  local sehne
  for i = 1, detail-1 do
    sehne = math.sqrt(0.25 - (((i/detail)-0.5)^2))
    spherebox[i]={-sehne, (i/detail)-0.5, -sehne, sehne, (i/detail)+(1/detail)-0.5, sehne}
  end
  minetest.register_node("noncubic:cylinder_sphere_" .. subname, {
    description = description.. " Cylinder Sphere",
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

noncubic.register_element_straight = function(subname, recipeitem, groups, images, description)
  minetest.register_node("noncubic:element_straight_" .. subname, {
    description = description.. " Straight",
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

noncubic.register_element_edge = function(subname, recipeitem, groups, images, description)
  minetest.register_node("noncubic:element_edge_" .. subname, {
    description = description.. " Edge",
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

noncubic.register_element_t = function(subname, recipeitem, groups, images, description)
  minetest.register_node("noncubic:element_t_" .. subname, {
    description = description.. " T Junction",
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


noncubic.register_element_cross = function(subname, recipeitem, groups, images, description)
  minetest.register_node("noncubic:element_cross_" .. subname, {
    description = description.. " Cross Junction",
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

noncubic.register_element_end = function(subname, recipeitem, groups, images, description)

minetest.register_node("noncubic:element_end_" .. subname, {
  description = description.. " End",
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

noncubic.register_element_straight_double = function(subname3, recipeitem3, groups3, images3, description3)

  minetest.register_node("noncubic:element_straight_double_" .. subname3, {
    description = description3.. " Straight Double",
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

noncubic.register_element_edge_double = function(subname3, recipeitem3, groups3, images3, description3)

  minetest.register_node("noncubic:element_edge_double_" .. subname3, {
    description = description3.. " Edge Double",
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

noncubic.register_element_t_double = function(subname3, recipeitem3, groups3, images3, description3)

  minetest.register_node("noncubic:element_element_t_double_" .. subname3, {
    description = description3.. " T Double",
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

noncubic.register_element_cross_double = function(subname3, recipeitem3, groups3, images3, description3)
  minetest.register_node("noncubic:element_cross_double_" .. subname3, {
    description = description3.. " Cross Double",
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

noncubic.register_element_end_double = function(subname3, recipeitem3, groups3, images3, description3)
  minetest.register_node("noncubic:element_end_double_" .. subname3, {
    description = description3.. " End Double",
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

noncubic.register_stick = function(subname2, recipeitem2, groups2, images2, description2)
  minetest.register_node("noncubic:stick_" .. subname2, {
    description = description2.. " Stick",
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

--groups
--------
noncubic.register_roof = function(subname, recipeitem, groups, images , description)
  noncubic.register_slope_edge(subname, recipeitem, groups, images, description)
  noncubic.register_slope_inner_edge(subname, recipeitem, groups, images, description)
  noncubic.register_slope(subname, recipeitem, groups, images, description)
end

noncubic.register_all = function(subname, recipeitem, groups, images, description)
   noncubic.register_slope(subname, recipeitem, groups, images, description)
   noncubic.register_slope_upsdown(subname, recipeitem, groups, images, description)
   noncubic.register_slope_edge(subname, recipeitem, groups, images, description)
   noncubic.register_slope_inner_edge(subname, recipeitem, groups, images, description)
   noncubic.register_slope_upsdown_edge(subname, recipeitem, groups, images, description)
   noncubic.register_slope_upsdown_inner_edge(subname, recipeitem, groups, images, description)
   noncubic.register_pyramid(subname, recipeitem, groups, images, description)
   noncubic.register_spike(subname, recipeitem, groups, images, description)
   noncubic.register_cylinder(subname, recipeitem, groups, images, description)
   noncubic.register_cylinder_horizontal(subname, recipeitem, groups, images, description)
   noncubic.register_sphere(subname, recipeitem, groups, images, description)
   noncubic.register_element_straight(subname, recipeitem, groups, images, description)
   noncubic.register_element_edge(subname, recipeitem, groups, images, description)
   noncubic.register_element_t(subname, recipeitem, groups, images, description)
   noncubic.register_element_cross(subname, recipeitem, groups, images, description)
   noncubic.register_element_end(subname, recipeitem, groups, images, description)
end

noncubic.register_elements = function(subname3, recipeitem3, groups3, images3, description)
  noncubic.register_element_straight_double(subname3, recipeitem3, groups3, images3, description)
  noncubic.register_element_edge_double(subname3, recipeitem3, groups3, images3, description)
  noncubic.register_element_t_double(subname3, recipeitem3, groups3, images3, description)
  noncubic.register_element_cross_double(subname3, recipeitem3, groups3, images3, description)
  noncubic.register_element_end_double(subname3, recipeitem3, groups3, images3, description)
end
