// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_input(){
	up_key = keyboard_check(vk_up)
	down_key = keyboard_check(vk_down)
	left_key = keyboard_check(vk_left)
	right_key = keyboard_check(vk_right)
	
	attack_key = keyboard_check(ord("X"))
	dash_key = keyboard_check_pressed(ord("C"))
}

