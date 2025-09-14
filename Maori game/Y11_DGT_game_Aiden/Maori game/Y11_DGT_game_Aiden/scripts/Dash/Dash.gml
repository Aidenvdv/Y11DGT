function Dash() {
	var key_E = ord("E");
	 var enemy = instance_nearest(x, y, EnemyObj);
	 var Te = 0;
	var senemy = instance_nearest (x, y, ESP1);
	var Denemy = instance_nearest (x, y, DarkObj);
	if keyboard_check_pressed(ord("E")){
		RDash = 1;
		show_debug_message ( CDash);
		show_debug_message("try to dash")
	}
	show_debug_message("In Dash: CDash = " + string( CDash) + ",  is_dashing = " + string(is_dashing) + ", RDash = " + string(RDash));

if (Sdash == 1 && inputMagnitude){
	if ( ( CDash >= 10 )   && (keyboard_check_pressed(ord("E"))) && Object2.DDur<=0){
		show_debug_message("Set Walkspeed = 40");
		show_debug_message ( CDash)
		if (RDash == 1){
			walkspd = 280;
			Object2.DDur = 30
			 CDash = 0;
			if place_meeting(x, y, EnemyObj){
				enemy.Ehealth -= Ddam
			}
			else if place_meeting (x, y, ESP1){
				senemy.SEhealth -= Ddam
			}
			else if place_meeting (x, y, DarkObj){
				Denemy.Dhealth -= Ddam
			}
			else if place_meeting(x,y, Whiro){
				Whiro.Whp -= Ddam
			}
		}
	}
//if (RDash) && (enemy != noone && distance_to_object(EnemyObj) < 2) && (CDash <1) {
//	enemy.Ehealth -= 7
//}
}
}