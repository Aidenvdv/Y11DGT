x = device_mouse_x(0)
y = device_mouse_y(0)
if Play.play && place_meeting(x, y, Play){
	instance_destroy()
}