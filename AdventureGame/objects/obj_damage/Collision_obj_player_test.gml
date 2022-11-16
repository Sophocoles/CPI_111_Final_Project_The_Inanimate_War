/// @description Collision with the player

if(other.id != creator && instance_exists(creator))
{
	audio_play_sound(snd_player_takes_damage, 9, false);
	obj_player_stats.healthPoints -= damage;
	
	// Create knockback variables
	var dir = point_direction(creator.x, creator.y, other.x, other.y);
	var xforce = lengthdir_x(knockback, dir)
	var yforce = lengthdir_y(knockback, dir)
	
	// Apply the knockback
	with(other)
	{
		physics_apply_impulse(x, y, xforce, yforce);
	}
}







