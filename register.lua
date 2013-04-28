-- REGISTER MATERIALS AND PROPERTIES FOR STICKS:
------------------------------------------------
-- WOOD
-------
noncubic.register_stick_etc("wood", "default:wood",
                {snappy=2,choppy=2,oddly_breakable_by_hand=2},
                {"default_wood.png"},
                "Wooden Stick")
-- STONE
--------
noncubic.register_stick_etc("stone", "default:stone",
                {cracky=3},
                {"default_stone.png"},
                "Stone Stick")
-- COBBLE
---------
noncubic.register_stick_etc("cobble", "default:cobble",
                {cracky=3},
                {"default_cobble.png"},
                "Cobble Stick")
-- BRICK
--------
noncubic.register_stick_etc("brick", "default:brick",
                {cracky=3},
                {"default_brick.png"},
                "Brick Stick")
-- SANDSTONE
------------
noncubic.register_stick_etc("sandstone", "default:sandstone",
                {crumbly=2,cracky=2},
                {"default_sandstone.png"},
                "Sandstone Stick")
-- LEAVES
---------
noncubic.register_stick_etc("leaves", "default:leaves",
                {snappy=2,choppy=2,oddly_breakable_by_hand=3},
                {"bucharest_tree.png"},
                "Leaves Stick")
-- GLASS
--------
noncubic.register_stick_etc("glass", "default:glass",
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
                {"bucharest_tree.png"},
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
