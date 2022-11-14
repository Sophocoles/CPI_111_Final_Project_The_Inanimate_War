/// @description Damage all lifeforms

if(other.id != creator)
{
	other.healthPoints -= damage;
	
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







