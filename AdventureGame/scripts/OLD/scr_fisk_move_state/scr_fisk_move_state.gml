// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_fisk_move_state(){
	scr_get_input();
	
	if (dash_key)
	{
		state = scr_dash_state;
		alarm[0] = room_speed/8;
	}
	
	if (attack_key)
	{
		// set image_index to 0 for smoother attack
		image_index = 0;
		state = scr_fisk_attack_state;
	}
	
	// get the axis
	var xaxis = (right_key - left_key);
	var yaxis = (down_key - up_key);
	
	// get the direction using point_direction
	dir = point_direction(0, 0, xaxis, yaxis);
	
	// set the length
	if (xaxis == 0 && yaxis == 0)
	{
		len = 0;
	}
	else
	{
		len = moveSpeed;
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
	
	// set Vertical sprites depending on vSpeed
	if(vSpeed > 0)
	{
		sprite_index = spr_fisk_down;
	}
	else if(vSpeed < 0)
	{
		sprite_index = spr_fisk_up;
	}
	// set Horizontal sprites depending on hSpeed
	if (hSpeed > 0)
	{
		sprite_index = spr_fisk_right;
	}
	else if(hSpeed < 0)
	{
		sprite_index = spr_fisk_up;
	}
	
}