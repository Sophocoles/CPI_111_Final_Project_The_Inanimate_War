// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dash_state(){
	// if the player is not moving then set the dash direction to whichever side they are facing
	if(len == 0)
	{
		// face is 1,2,3,4 so multiply by 90 to get an angle within 360 degrees
		dir = face * 90;
	}
		
	len = moveSpeed * 4;
	
	// get the hSpeed and vSpeed
	hSpeed = lengthdir_x(len, dir);
	vSpeed = lengthdir_y(len, dir);
	
	// move the object
	phy_position_x += hSpeed;
	phy_position_y += vSpeed;
	
	var dash = instance_create_layer(x, y, "Instances", obj_dash_effect)
	dash.sprite_index = sprite_index;
	dash.image_index = image_index;
}