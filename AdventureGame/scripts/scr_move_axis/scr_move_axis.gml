// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move_axis(){
	var dir = point_direction(0, 0, xaxis, yaxis);
	var hSpeed = lengthdir_x(moveSpeed, dir);
	var vSpeed = lengthdir_y(moveSpeed, dir);
	
	if(hSpeed != 0)
		image_xscale = sign(hSpeed);
		
	scr_get_face(dir)
	movement = MOVE;
	phy_position_x += hSpeed;
	phy_position_y += vSpeed;
}