/// @description Insert description here
// You can write your code in this editor
if(spawnCount < maxMinionCount)
{
	doSpawn =  true
}
else
{
	doSpawn = false
}
if(canSpawn && doSpawn)
{
	var enemy = instance_create_layer(obj_spider.x,obj_spider.y,"Instances",obj_enemy_minion)
	enemy.spawner = self
	self.spawnCount += 1
	self.canSpawn = false
	alarm[0] = room_speed * (spawnDelay + random_range(0.5,3.0))
}






