//make him follow player and make it attack the player every 0.2 seconds, somehow

var player = instance_nearest(x, y, Object2);
if (distance_to_object(player) < 1000){
	move_towards_point(player.x, player.y, Ewalkspd)
}

if (self.Ehealth <= 0){
 instance_destroy();
instance_create_layer(x, y, "Instances", Heart);
}
if (player.is_shield == 0){
	Chit = 0
}
if (player.is_shield == 1){
	Chit = 1
}
if player.hitted == 1{
	alarm[1] = damdur
	self.sprite_index = Enemy
}
//enemy checks if it can attack and attacks
if(distance_to_object(player)< 7) && Chit== 0 &&  eac<=1 && Ecrit < 5{
	Ewalkspd = 0;
	Object2.hp -= 2;
	eac = 120
	self.sprite_index = Ehit
	Ecrit += 1;
	show_debug_message("erhio");

}
//critical hit after Ecrit = 5
 else if (distance_to_object(player)< 7) && Chit== 0 && eac < 1 && Ecrit >= 5{
	Ewalkspd = 0;
	eac = 1200;
	Object2.hp -= 5
	self.sprite_index = Ehit
	Ecrit = 0;
	show_debug_message("crithit");

}
eac = eac - 1
if (Ecrit > 5){
	Ecrit = 0
}

//change the animation when hit
if sad == 0{
	self.sprite_index = Damaged_enemy;
	image_speed = 1;
}

 if(distance_to_object(player)>=4){
	Ewalkspd = 7;
	//show_debug_message ("walk boy")
}
if (distance_to_object(player)<=3){
	Ewalkspd = 0;
}
show_debug_message(Chit)
