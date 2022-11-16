/// @description Collect Health

// destroy the exp object
with(other)
	instance_destroy();

// level up code
with(obj_player_stats)
{
	audio_play_sound(snd_expr, 4, false);
	healthPoints = min(healthPoints + 3, maxHp);
}




