// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_face(dir){
	// dir can be anything between 0 - 360
	// divinding div by 90 so we can get a number between 1 and 4
	// round the value to get the face value
	face = round(dir/90);
	
	if (face == 4) face = RIGHT;
}