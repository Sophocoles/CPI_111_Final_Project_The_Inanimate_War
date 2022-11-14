// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_animation_hit_frame(frame)
{
	return (image_index >= frame + 1 - image_speed) && (image_index < frame + 1);
}