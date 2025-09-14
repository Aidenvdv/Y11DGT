attackm= mouse_check_button_pressed(mb_left);
show_debug_message("Mouse Cliked on...");
x = device_mouse_x(0)
y = device_mouse_y(0)

sprite_index = FistSpr;

if (place_meeting(x, y, EnemyObj)){	
	hit = 1;
	show_debug_message("Mouse Cliked => HIT");	
}
if !place_meeting(x,y, EnemyObj){
	hit = 0;
}
if (place_meeting(x, y, ESP1)){
	Shit = 1;
}
if (!place_meeting(x, y, ESP1)){
	Shit = 0;
}
if  (place_meeting(x, y, DarkObj)){
	Dhit = 1
}
if (! place_meeting(x, y, DarkObj)){
	Dhit = 0
}
if  (place_meeting(x, y, Whiro)){
	Whit = 1
}
if (! place_meeting(x, y, Whiro)){
	Whit = 0
}

if !(place_meeting(x, y, EnemyObj) || place_meeting(x, y, ESP1) || place_meeting(x, y, DarkObj)){
	show_debug_message("Mouse Cliked => MISS");
	hit = 0
}

if object_exists(Object2){	
	image_index = 10 - Object2.CDash
}