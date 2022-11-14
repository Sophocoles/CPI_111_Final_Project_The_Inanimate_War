/// @description Initialize the Dialog object
text = noone;
text_visible = "";
text_page = 0;
text_count = 0;
textspeed = .5;
display_scale = display_get_gui_width()/camera_get_view_width(view_camera[0]);
width = sprite_width * display_scale;
margin = 8;
depth = -1000;