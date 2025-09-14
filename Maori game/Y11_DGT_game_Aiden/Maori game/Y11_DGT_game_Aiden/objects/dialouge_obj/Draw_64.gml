//draw event
var dx = 0;
var dy = gui_height * 0.7;
var boxw = gui_width;
var boxh = gui_height - dy;
draw_sprite_stretched(spr_box, 0, dx, dy, boxw, boxh);
dx += 16;
dy += 16;
draw_set_font(Font1);
var _name = messages[current_message].name;
draw_text(dx, dy, _name);
draw_text_ext(dx, dy, draw_message, -1, boxw - dx *2);
