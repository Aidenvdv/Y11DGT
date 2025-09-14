var player = instance_nearest(x, y, Object2)
if (distance_to_object(player) < 1000){
	move_towards_point(player.x, player.y, Dwalkspd)
}
// chekck if able to damage
if (player.is_shield == 1){
	Dhit = 0
}
else if (!player.is_shield == 0){
	Dhit = 1
}
Dc -= 1
//damage
if (distance_to_object(player) < 10) && (Dhit == 1) && Dc <=0{
	Dc = 30;
	player.hp -= Ddam;
	sprite_index = DarkHit;
	h = 1;
}
if (distance_to_object(player) > 10){
	h = 0;
}
//animations
if (Dwalkspd != 0) && (h == 0){
	sprite_index  = DarkMove;
	image_speed = 0.25;
}
if (self.Dhealth <= 0){
	instance_destroy();
	instance_create_layer(x, y, "Instances", Heart);
}
else if (Dwalkspd > 0 && (h == 0)){
	sprite_index = DarkHit;
}