move_towards_point(Throw_dirx, Throw_diry, Ts);
if place_meeting (x, y, Object2){
	if (Object2.is_shield == 0){
	Object2.hp -= Whiro.WWdam;
	instance_destroy();
	Whiro.Created += 1;
	}
	else if (Object2.is_shield == 1){
		instance_destroy();
		Object2.CDash = clamp(Object2.CDash +1, 0, 10)

	}
}
if !place_meeting (x, y, Object2){
	Tc -= 1
}
if Tc <=0 {
	instance_destroy();
	instance_create_layer(x, y, "Instances", Heart);
}
