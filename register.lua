-- REGISTER MATERIALS AND PROPERTIES FOR STICKS:
------------------------------------------------
-- WOOD
-------
noncubic.register_stick("wood", "default:wood",
                {snappy=2,choppy=2,oddly_breakable_by_hand=2},
                {"default_wood.png"},
                "Wooden Stick")
-- STONE
--------
noncubic.register_stick("stone", "default:stone",
                {cracky=3},
                {"default_stone.png"},
                "Stone Stick")
-- COBBLE
---------
noncubic.register_stick("cobble", "default:cobble",
                {cracky=3},
                {"default_cobble.png"},
                "Cobble Stick")
-- BRICK
--------
noncubic.register_stick("brick", "default:brick",
                {cracky=3},
                {"default_brick.png"},
                "Brick Stick")
-- SANDSTONE
------------
noncubic.register_stick("sandstone", "default:sandstone",
                {crumbly=2,cracky=2},
                {"default_sandstone.png"},
                "Sandstone Stick")
-- LEAVES
---------
noncubic.register_stick("leaves", "default:leaves",
                {snappy=2,choppy=2,oddly_breakable_by_hand=3},
                {"default_leaves.png"},
                "Leaves Stick")
-- GLASS
--------
noncubic.register_stick("glass", "default:glass",
                {snappy=2,choppy=2,oddly_breakable_by_hand=2},
                {"default_glass.png"},
                "Glass Stick")
-- WOOD
-------
noncubic.register_elements("wood", "wood",
                {snappy=2,choppy=2,oddly_breakable_by_hand=2},
                {"default_wood.png"},
                "Wooden Element Straight Double",
                "Wooden Element Edge Double",
		"Wooden Element T Double",
		"Wooden Element Cross Double",
		"Wooden Element End Double")
-- STONE
--------
noncubic.register_elements("stone", "stone",
                {cracky=3},
                {"default_stone.png"},
                "Stone Element Straight Double",
                "Stone Element Edge Double",
		"Stone Element T Double",
		"Stone Element Cross Double",
		"Stone Element End Double")
-- COBBLE
---------
noncubic.register_elements("cobble", "cobble",
                {cracky=3},
                {"default_cobble.png"},
                "Cobble Element Straight Double",
                "Cobble Element Edge Double",
		"Cobble Element T Double",
		"Cobble Element Cross Double",
		"Cobble Element End Double")
-- BRICK
--------
noncubic.register_elements("brick", "brick",
                {cracky=3},
                {"default_brick.png"},
                "Brick Element Straight Double",
                "Brick Element Edge Double",
		"Brick Element T Double",
		"Brick Element Cross Double",
		"Brick Element End Double")
-- SANDSTONE
------------
noncubic.register_elements("sandstone", "sandstone",
                {crumbly=2,cracky=2},
                {"default_sandstone.png"},
                "Sandstone Element Straight Double",
                "Sandstone Element Edge Double",
		"Sandstone Element T Double",
		"Sandstone Element Cross Double",
		"Sandstone Element End Double")
-- LEAVES
---------
noncubic.register_elements("leaves", "leaves",
                {snappy=2,choppy=2,oddly_breakable_by_hand=3},
                {"default_leaves.png"},
                "Leaves Element Straight Double",
                "Leaves Element Edge Double",
		"Leaves Element T Double",
		"Leaves Element Cross Double",
		"Leaves Element End Double")
-- GLASS
--------
noncubic.register_elements("glass", "glass",
                {snappy=2,choppy=2,oddly_breakable_by_hand=2},
                {"default_glass.png"},
                "Glass Element Straight Double",
                "Glass Element Edge Double",
		"Glass Element T Double",
		"Glass Element Cross Double",
		"Glass Element End Double")
		
		
noncubic.register_all("wood", "stairs:stair_wood",
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
noncubic.register_all("stone", "stairs:stair_stone",
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
noncubic.register_all("cobble", "stairs:stair_cobble",
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
noncubic.register_all("brick", "stairs:stair_brick",
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
noncubic.register_all("sandstone", "stairs:stair_sandstone",
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
noncubic.register_all("leaves", "default:leaves",
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
noncubic.register_all("dirt", "default:dirt",
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
noncubic.register_all("glass", "default:glass",
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
