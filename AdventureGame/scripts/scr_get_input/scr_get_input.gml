// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_input(){
	up_key = keyboard_check(vk_up) ||  keyboard_check(ord("W"))
	down_key = keyboard_check(vk_down) ||  keyboard_check(ord("S"))
	left_key = keyboard_check(vk_left) ||  keyboard_check(ord("A"))
	right_key = keyboard_check(vk_right) ||  keyboard_check(ord("D"))
	swap_key = keyboard_check_pressed(ord("E"))
	pause_key = keyboard_check_pressed(vk_escape)
	enter_key = keyboard_check_pressed(vk_enter)
	spell_key = keyboard_check_pressed(ord("K")) || mouse_check_button_pressed(mb_right)
	attack_key = keyboard_check_pressed(ord("J")) || mouse_check_button_pressed(mb_left)
	dash_key = keyboard_check_pressed(ord("L")) || mouse_check_button_pressed(mb_middle) || keyboard_check_pressed(vk_shift)
}

