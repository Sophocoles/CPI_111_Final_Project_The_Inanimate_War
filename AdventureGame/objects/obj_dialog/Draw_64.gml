/// @description Draw the dialog

text_count += textspeed;
text_visible = string_copy(text[text_page], 0, text_count);
var xx = (x - camera_get_view_x(view_camera[0])) * display_scale;
var yy = (y - camera_get_view_y(view_camera[0])) * display_scale;

draw_text_ext(xx + margin, yy + margin, text_visible, -1, width - (margin*2));







