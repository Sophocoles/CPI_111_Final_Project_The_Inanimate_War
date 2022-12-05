/// @description Control Depth

depth = -y;

if(healthPoints <= 0)
{
	instance_destroy();
	instance_create_layer(x, y, layer, obj_player_game_over);
}






