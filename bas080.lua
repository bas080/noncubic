--Register Roof by Bas080
-------------------------
minetest.register_craft({
	type = "shapeless",
	output = "noncubic:roof_tar",
	recipe = {"default:gravel", "group:sand", "default:gravel", "default:coal_lump"},
})

minetest.register_node("noncubic:roof_tar", {
	description = "Tar Roof",
	tiles = {"roof_shingles.png"},
	paramtype = "light",
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2},
})

noncubic.register_roof("tar", "noncubic:roof_tar", {choppy=2,oddly_breakable_by_hand=2,flammable=2}, {"roof_shingles.png"}, "Tar Roof")
