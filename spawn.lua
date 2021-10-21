minetest.register_node("josetanajuras:formigueiro", {
description="formigueiro",
ight_source = 12,
paramtype2 = "facedir",

drawtype = "mesh",
mesh = "formigueiro.b3d",
tiles = {"formigueiro.png"},
sunlight_propagates = true,
paramtype = "light",
visual_scale = 0.2,
protetor = "singleplayer",
pathfinding= false,
automatic_rotate=1,
groups = {	snappy=1,	choppy=2,	flammable=3,	oddly_breakable_by_hand=2,},

selection_box = {
		type = 'fixed',
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		},
	collision_box = {
		type = 'fixed',
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		},

on_rightclick = function(self, clicker,rot)
     minetest.chat_send_all("fez nada")
end,
})
