//get input to get selection
up_key = keyboard_check_pressed(vk_up)
down_key = keyboard_check_pressed(vk_down)
accept_key = keyboard_check_pressed(vk_enter)


//move thru the menu
pos += down_key - up_key

//Loop to top or bottom of list
if (pos >= op_length)
{
	pos = 0
}

if (pos < 0)
{
	pos = op_length -1
}

if(accept_key)
{
	//using the options
switch(pos)
{//start game
	case 0:
		room_goto_next()
		audio_stop_sound(snd_main_menu);
		audio_play_sound(snd_combat_01, 5, true);
		break;
	
	//Settings
	case 1:
		break;
	
	//Quit
	case 2:
		game_end();
		break;
}
}






