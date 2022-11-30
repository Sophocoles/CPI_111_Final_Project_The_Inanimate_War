// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_attack_state(){
	image_speed = .5;
	movement = ATTACK;
	
	if(scr_animation_hit_frame(2))
	{
		var attack_animation = instance_create_layer(x, y, "Instances", obj_weapon_animation);
		attack_animation.sprite_index = weapon_sprite;
		//attack_animation.dir = point_direction(x,y,mouse_x,mouse_y);
		//attack_animation.image_angle = attack_animation.dir
		attack_animation.dir = face * 90;
		attack_animation.image_angle = (face * 90) + 45;
	}
	
	if(scr_animation_hit_frame(1))
	{
		var xx = 0;
		var yy = 0;
		
		switch(face)
		{
			case DOWN:
				xx = x;
				yy = y + 12;
				break;
				
			case UP:
				xx = x;
				yy = y - 10;
				break;
				
			case LEFT:
				xx = x - 10;
				yy = y + 2;
				break;
				
			case RIGHT:
				xx = x + 10;
				yy = y + 2;
				break;
		}
		
		audio_play_sound(snd_sword_attack, 7, false);
		var damage = instance_create_layer(xx, yy, "Instances", obj_damage);
		damage.creator = id;
		damage.damage = obj_player_stats.attack;
	}
}