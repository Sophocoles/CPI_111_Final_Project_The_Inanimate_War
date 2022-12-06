/// @description Damage to all lifeforms

if(other.id != creator)
{
	other.healthPoints -= obj_player_stats.attack/2;
	
	// Create knockback variables
	var dir = point_direction(0, 0, phy_speed_x, phy_speed_y);
	var xforce = lengthdir_x(knockback, dir)
	var yforce = lengthdir_y(knockback, dir)
	
	// Apply the knockback
	with(other)
	{
		physics_apply_impulse(x, y, xforce, yforce);
	}
	
	alarm[0] = 1;
}






