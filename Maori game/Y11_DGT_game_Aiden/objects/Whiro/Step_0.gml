Weac -= 1
if (Weac <= 0){
	instance_create_layer(x, y, "Instances", Wt);
	Weac = 60;
}
if Created == 3{
	instance_create_layer(x, y, "Instances", DarkObj);
	Created = 0;
}
if Whp <= 0{
	instance_destroy();
}