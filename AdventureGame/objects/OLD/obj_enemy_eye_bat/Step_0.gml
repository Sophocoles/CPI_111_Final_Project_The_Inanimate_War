/// @description Insert description here
// You can write your code in this editor

event_inherited();
if (instance_exists(obj_player))
{
	phy_position_x += sign(obj_player.x - x) * moveSpeed;
	phy_position_y += sign(obj_player.y - y) * moveSpeed;
}
else if (instance_exists(obj_fisk))
{
	phy_position_x += sign(obj_fisk.x - x) * moveSpeed;
	phy_position_y += sign(obj_fisk.y - y) * moveSpeed;
}
else if (instance_exists(obj_stubby))
{
	phy_position_x += sign(obj_stubby.x - x) * moveSpeed;
	phy_position_y += sign(obj_stubby.y - y) * moveSpeed;
}
else
{
	phy_position_x += sign(obj_kiki.x - x) * moveSpeed;
	phy_position_y += sign(obj_kiki.y - y) * moveSpeed;
}






