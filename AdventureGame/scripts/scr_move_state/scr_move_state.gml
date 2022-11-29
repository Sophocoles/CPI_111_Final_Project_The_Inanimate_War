// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move_state(){
	movement = MOVE;
	
	if (obj_input.dash_key)
	{
		var xdir = lengthdir_x(8, face * 90)
		var ydir = lengthdir_y(8, face * 90)
		var speaker = instance_place(x + xdir, y + ydir, obj_speaker)
		if(speaker != noone)
		{
			with(speaker){
				if(!instance_exists(dialog))
				{
					dialog = instance_create_layer(x + xoffset, y + yoffset, "Instances", obj_dialog)
					dialog.text = text;
				}
				else
				{
					dialog.text_page++;
					dialog.text_count = 0;
					if(dialog.text_page > array_length_1d(dialog.text) - 1)
					{
						with(dialog)
							instance_destroy();
					}
				}
			}
		}
		else if(obj_player_stats.stamina >= DASH_COST)
		{
			state = scr_dash_state;
			alarm[0] = room_speed/8;
			obj_player_stats.stamina -= DASH_COST;
			obj_player_stats.alarm[0] = room_speed;
		}	
	}
	
	if (obj_input.attack_key)
	{
		// set image_index to 0 for smoother attack
		image_index = 0;
		state = scr_attack_state;
	}
	
	if(obj_input.spell_key)
	{
		var projectile = instance_create_layer(x, y, "Instances", obj_projectile)
		fac = point_direction(x,y,mouse_x,mouse_y);
		var xforce = lengthdir_x(20, fac);
		var yforce = lengthdir_y(20, fac);
		projectile.creator = id;
		
		with(projectile)
		{
			physics_apply_impulse(x, y, xforce, yforce);
		}
	}
	
	if(obj_input.swap_key)
	{
		var nearest_weapon = instance_nearest(x, y, obj_weapon_item);
		if(place_meeting(x, y + 4, nearest_weapon))
		{
			scr_swap_weapons(nearest_weapon);
		}
	}
	
	// get the axis
	var xaxis = (obj_input.right_key - obj_input.left_key);
	var yaxis = (obj_input.down_key - obj_input.up_key);
	
	// get the direction using point_direction
	dir = point_direction(0, 0, xaxis, yaxis);
	
	// set the length
	if (xaxis == 0 && yaxis == 0)
	{
		// if the character isnt moving then set the length to 0
		len = 0;
	}
	else
	{
		// if the character is moving then set the length to the moveSpeed and get the facing direction
		len = moveSpeed;
		scr_get_face(dir);
	}
	
	// get the hSpeed and vSpeed
	hSpeed = lengthdir_x(len, dir);
	vSpeed = lengthdir_y(len, dir);
	
	// move the object
	phy_position_x += hSpeed;
	phy_position_y += vSpeed;
	
	// set the image_speed
	image_speed = .2;
	
	if(len == 0)
		image_index = 0;
}