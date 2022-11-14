// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_attack_state(){
	image_speed = .5;
	
	switch(sprite_index)
	{
		case spr_player_down:
			sprite_index = spr_player_use_down;
			break;
			
		case spr_player_up:
			sprite_index = spr_player_use_up;
			break;
			
		case spr_player_left:
			sprite_index = spr_player_use_left;
			break;
			
		case spr_player_right:
			sprite_index = spr_player_use_right;
			break;
	}
	
	if(image_index >= 3 && attacked == false)
	{
		var xx = 0;
		var yy = 0;
		
		switch(sprite_index)
		{
			case spr_player_use_down:
				xx = x;
				yy = y + 14;
				break;
				
			case spr_player_use_up:
				xx = x;
				yy = y - 10;
				break;
				
			case spr_player_use_left:
				xx = x - 12;
				yy = y + 2;
				break;
				
			case spr_player_use_right:
				xx = x + 12;
				yy = y + 2;
				break;
		}
			
		var damage = instance_create_layer(xx, yy, "Instances", obj_damage);
		damage.creator = id;
		attacked = true;
	}
}