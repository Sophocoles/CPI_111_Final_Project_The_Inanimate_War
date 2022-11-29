/// @description Drop orbs

// Drop an exp orb
instance_create_layer(x, y, "Instances", obj_expr);
audio_play_sound(snd_enemy_die, 5, false);

// Drop a health pack
if (scr_chance(.5))
	instance_create_layer(x + random_range(-12, 12), y + random_range(-12, 12), "Instances", obj_health);
