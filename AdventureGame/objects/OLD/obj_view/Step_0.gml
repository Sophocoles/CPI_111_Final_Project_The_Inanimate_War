/// @description Controls the view of the game and make it smoother

// Move 10% towaards the player
if (instance_exists(obj_player))
{
	x += (obj_player.x - x) * .1;
	y += (obj_player.y - y) * .1;
}
else if (instance_exists(obj_kiki))
{
	x += (obj_kiki.x - x) * .1;
	y += (obj_kiki.y - y) * .1;
}
else if (instance_exists(obj_stubby))
{
	x += (obj_stubby.x - x) * .1;
	y += (obj_stubby.y - y) * .1;
}
else if (instance_exists(obj_fisk))
{
	x += (obj_fisk.x - x) * .1;
	y += (obj_fisk.y - y) * .1;
}





