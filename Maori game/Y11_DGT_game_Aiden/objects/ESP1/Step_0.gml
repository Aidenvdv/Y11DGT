//step event
var player = instance_nearest(x, y, Object2);
if !(object_exists(ESP1)){
	show_debug_message("gone")
}

if (distance_to_object(player) < 1000){
	
	move_towards_point(player.x, player.y, SEwalkspd)
	SEwalkspd = 7

}

Seac -= 1;

if player.is_shield == 1{
	SEchit = 0;
}
else if player.is_shield == 0{
	SEchit = 1;
}

if distance_to_object(player) < 10 && SEchit == 1 && Seac <=0 {
	 Object2.hp -= 3;
	Seac = 30;
	//sprite_index = esp1hit
}

if self.SEhealth <= 0{
	player.Sdash =1;
	player.cd = 1;
	player.CDash = 10;
	player.Ccdash = 1;
	instance_create_layer( x, y, "Instances", Heart);
	instance_destroy();
	
}
