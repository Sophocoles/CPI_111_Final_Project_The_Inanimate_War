/// @description Increase Player EXP

// destroy the exp object
with(other)
	instance_destroy();

// level up code
with(obj_player_stats)
{
	audio_play_sound(snd_expr, 4, false);
	expr += 1;
	if(expr >= maxExpr)
	{
		level += 1;
		expr = expr - maxExpr;
		maxExpr *= 2;
		healthPoints += 2;
		maxHp += 2;
		stamina += DASH_COST;
		maxStamina += DASH_COST;
		attack += 1;
	}
}




