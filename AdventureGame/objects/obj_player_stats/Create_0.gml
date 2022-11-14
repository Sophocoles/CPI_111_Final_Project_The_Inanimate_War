draw_set_color(c_white);

// Get the player's xstart and ystart
if(instance_exists(obj_player))
{
	player_xstart = obj_player.x;
	player_ystart = obj_player.y;
}
else
{
	player_xstart = 0;
	player_ystart = 0;
}

// save the previous_room
previous_room = room;
room_start_action = NEW_ROOM;





