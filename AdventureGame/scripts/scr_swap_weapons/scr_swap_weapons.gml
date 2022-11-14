// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_swap_weapons(new_weapon){
	var temp = weapon_sprite;
	weapon_sprite = new_weapon.sprite_index;
	new_weapon.sprite_index = temp;
}