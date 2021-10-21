
-- Load support for intllib.
local MP = minetest.get_modpath(minetest.get_current_modname())
local S = minetest.get_translator and minetest.get_translator("tanajura") or
		dofile(MP .. "/intllib.lua")

-- 0.4.17 or 5.0 check
local y_off = 20
if minetest.registered_nodes["default:permafrost"] then
	y_off = 10
end



mobs:register_mob("josetanajuras:tanajura", {

	type = "animal",
	visual = "mesh",
	mesh ="tanajura.b3d",
	visual_size = {x = 1.0, y = 1.0},
	--collisionbox = {-0.6, -0.00, -0.6, 0.6, 1.45, 0.6},

	animation = {
        speed_normal = 40,
        speed_run = 60,
        walk_start = 30,
        walk_end = 39,
        fly_start = 55,
        fly_end=  59,
        fly_speed=40,
		stand_start = 45,
        stand_end = 180,
        stand_speed=10,
        die_rotate = true,},
                                     
	textures = {"tanajura.png"},
    pathfinding= true,	
	makes_footstep_sound = true,
    sounds = {	random = "cavalorelichando.ogg",	damage = "boi01.ogg",jump="cavalosom.ogg"},
	drops = {{name = "josetanajuras:tanajurasemferrao", chance = 1, min = 1, max = 1}},
    fear_height = 3,
    runaway = true,
    fly = true,
    --[[fly_in = {"air", "default:water_source", "default:water_flowing",
		"default:lava_source", "default:lava_flowing"
	},]]
                                             
    fly_in = {"air"},
    walk_chance =50,
    fly_chance =50,
    stand_chance=0,
    view_range = 8,
    passive = true,
    hp_min = 5,
    hp_max = 10,
    armor = 500,
    lava_damage = 5,
    fall_damage = 0,
    water_damage = 5,
    knock_back=false,
    knock_back=true,

})
mobs:register_egg("josetanajuras:tanajura", ("tanajura"), "tanajura_icone.png", 0)

--comida

minetest.register_craftitem("josetanajuras:tanajurasemferrao", {
	description = ("tanajurasemferrao"),
	inventory_image = "tanajurasemferrao.png", stack_max = 50,
	groups = {flammable = 3},
    on_use = minetest.item_eat(1),
})

minetest.register_craft({
	output = "josetanajuras:tanajurasemferrao",
	recipe = {
		{"josetanajuras:tanajura"},
	}
})

minetest.register_craftitem("josetanajuras:tanajuraassada", {
	description = ("Tanajura assada"),
	inventory_image = "tanajuraassada.png", stack_max = 50,
	groups = {flammable = 3,food_apple = 2},
    on_use = minetest.item_eat(3),
})


minetest.register_craft({type = "cooking",output = "josetanajuras:tanajuraassada",recipe = "josetanajuras:tanajurasemferrao",
})


if not mobs.custom_spawn_animal then
   mobs:spawn({
	   name = "josetanajuras:tanajura",
        nodes = {"josetanajuras:formigueiro,josetanajuras:formigueiro,josetanajuras:formigueiro"},
	   interval = 1,
	   chance=		15000,
	   max_light=	200,
	   min_light = 0,
	   min_height = -3100,
	   max_height = 3100,
	   active_object_count= 50,
	   --day_toggle = true,
   })
end
