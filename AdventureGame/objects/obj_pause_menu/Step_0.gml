/// @description Control the menu

if(alarm[0] <= 0)
{
	if(obj_input.down_key)
	{
		if(menu_index < array_length_1d(option) - 1)
		{
			menu_index++;
		}
		else
		{
			menu_index = 0;
		}
		alarm[0] = room_speed/6;
	}
	
	if(obj_input.up_key)
	{
		if(menu_index > 0)
		{
			menu_index--;
		}
		else
		{
			menu_index = array_length_1d(option) - 1;
		}
		alarm[0] = room_speed/6;
	}
	
	if(obj_input.enter_key)
	{
		switch (menu_index)
		{
			case 0:
				obj_player_stats.room_start_action = RETURN;
				room_goto(obj_player_stats.previous_room);
				break;
				
			case 1:
				scr_save_game();
				break;
				
			case 2:
				obj_player_stats.room_start_action = LOAD;
				room_goto(obj_player_stats.previous_room);
				break;
				
			case 3:
				game_end();
				break;
		
			default:
				// Dont do anything
				break;
		}
	}
}









