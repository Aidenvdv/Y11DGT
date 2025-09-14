//drop a heart when an enemy dies and heal the player
if instance_exists(Heart){
	if shc == 1{
	hc = hc - 1;
}
}
	// destroy the heart
	if hc<=0{
		instance_destroy(self)
}
