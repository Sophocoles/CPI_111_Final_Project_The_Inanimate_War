/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(obj_spider))
{
	instance_create_layer(obj_spider_spawner.x, obj_spider_spawner.y, layer, obj_spider);
	instance_destroy();
}








