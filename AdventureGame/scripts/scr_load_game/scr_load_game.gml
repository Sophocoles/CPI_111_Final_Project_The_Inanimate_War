// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_load_game(){
	var file = file_text_open_read(working_directory + "save.txt");
	var save_string = file_text_read_string(file);
	file_text_close(file);
	
	save_string = base64_decode(save_string);
	var save_data = json_decode(save_string);
	
	var save_room = save_data[? "room"];
	
	if(room != save_room)
	{
		room_goto(save_room);
	}
	
	with(obj_player_stats)
	{
		player_xstart = save_data[? "x"];
		player_ystart = save_data[? "y"];
		
		if(instance_exists(obj_player))
		{
			obj_player.x = player_xstart;
			obj_player.y = player_ystart;
			obj_player.phy_position_x = player_xstart;
			obj_player.phy_position_y = player_ystart;
		}
		else
		{
			instance_create_layer(player_xstart, player_ystart, "Instances", obj_player);
		}

		healthPoints = save_data[? "healthPoints"];
		maxHp = save_data[? "maxHp"];
		stamina = save_data[? "stamina"];
		maxStamina = save_data[? "maxStamina"];
		expr = save_data[? "expr"];
		maxExpr = save_data[? "maxExpr"];
		level = save_data[? "level"];
		attack = save_data[? "attack"];
	}
	
	ds_map_destroy(save_data);
}