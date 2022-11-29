/// @description Controls the view of the game and make it smoother

// Move 10% towaards the player

if(instance_exists(obj_spider))
{
	x = obj_spider.x;
	y = obj_spider.y;
}
// Move 10% towaards the player
else if (instance_exists(obj_player))
{
	x += (obj_player.x - x) * .1;
	y += (obj_player.y - y) * .1;
}






