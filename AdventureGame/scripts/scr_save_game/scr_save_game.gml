// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_save_game(){
	
	if(!instance_exists(obj_player_stats))
		exit
		
	var save_data = ds_map_create();
	
	with(obj_player_stats)
	{
		save_data[? "room"] = previous_room;
		save_data[? "x"] = player_xstart;
		save_data[? "y"] = player_ystart;
		save_data[? "healthPoints"] = healthPoints;
		save_data[? "maxHp"] = maxHp;
		save_data[? "stamina"] = stamina;
		save_data[? "maxStamina"] = maxStamina;
		save_data[? "expr"] = expr;
		save_data[? "maxExpr"] = maxExpr;
		save_data[? "level"] = level;
		save_data[? "attack"] = attack;
	}
	
	show_message("Game saved");
	
	var save_string = json_encode(save_data);
	ds_map_destroy(save_data);
	save_string = base64_encode(save_string);
	
	var file = file_text_open_write(working_directory + "save.txt")
	file_text_write_string(file, save_string)
	file_text_close(file)
}