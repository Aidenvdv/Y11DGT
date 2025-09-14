function equip(){
//check the player is in range of taiaha and if he is, equip it
	if (place_meeting(x, y, Object3)){
	show_debug_message("in")
		if (keyboard_check_pressed(ord("R"))){
			Te = 1;
			instance_destroy(Object3);
			show_debug_message("equiped");
		}
	}
}