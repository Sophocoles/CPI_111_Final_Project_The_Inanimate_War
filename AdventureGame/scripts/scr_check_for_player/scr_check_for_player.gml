// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_for_player(){
	if(instance_exists(obj_player))
	{
		// get the distance to the player
		var dis = point_distance(x, y, obj_player.x, obj_player.y);
		
		// if the distance is less than the sight then chase the player
		if (dis <= sight)
		{
			var dir = point_direction(x, y, obj_player.x, obj_player.y)
			xaxis = lengthdir_x(1, dir);
			yaxis = lengthdir_y(1, dir);
			state = scr_enemy_chase_state;
		}
		// if the player is further away than the sight then choose idle or wander state
		else
			scr_enemy_choose_next_state();
	}
	// if obj_player doesnt exist then choose idle or wander state
	else
		scr_enemy_choose_next_state();
}