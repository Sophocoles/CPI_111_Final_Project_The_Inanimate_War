/// @description Control the stats

if(healthPoints < 0)
{
	healthPoints = 0;	
}

if(stamina < maxStamina && alarm[0] == -1)
{
	if(room != rm_pause){
		stamina++;
	}
	alarm[0] = room_speed/2;
}

if(energy < maxEnergy && alarm[2] == -1)
{
	if(room != rm_pause){
		energy++;
	}
	alarm[2] = room_speed/2;
}

// Pause the game
if(obj_input.pause_key)
{
	if(room != rm_pause)
	{
		if(instance_exists(obj_player))
		{
			obj_player.persistent = false;
		}
		previous_room = room;
		// room_persistent = true;
		room_goto(rm_pause);
	}
	else
	{
		room_start_action = RETURN;
		room_goto(previous_room);
	}
	
	obj_input.pause_key = false;
}







