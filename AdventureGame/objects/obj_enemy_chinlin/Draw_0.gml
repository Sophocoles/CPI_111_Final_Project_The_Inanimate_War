/// @description Insert description here
// You can write your code in this editor
draw_self()

// draw hp
if(healthPoints<=7){
	draw_healthbar(x-16,y-16,x+16,y-14,(healthPoints/7)*100,c_black,c_red,c_green,0,true,true);
}



