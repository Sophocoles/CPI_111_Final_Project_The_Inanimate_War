/// @description Execute state


depth = -y;
script_execute(state)
sprite_index = sprite[face, movement]

// check for death
if(obj_player_stats.healthPoints <= 0)
{
	
	
	//sprite_index = spr_objective02
	instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_player_game_over);
	instance_destroy(obj_player_stats);
	instance_destroy(obj_player_objective);
	instance_destroy();
	

	
	
	
}








