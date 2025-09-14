function player_collision(){
	var _collision = false;

	//collisions
	if place_meeting (x + Object2.movespdx, y, tree){
		show_debug_message("Trying to move to: pl collsion tree");
		Object2.movespdx = 0
		_collision = true
		
	}		
	// heal player
	var heart = instance_nearest(x, y, Heart)
	if place_meeting(x, y, heart){
	Object2.hp = clamp(Object2.hp + 2, 0, 14);
	heart.shc = 1;
	show_debug_message("healed")
	}
	if place_meeting(x + Object2.movespdx, y, House){
		Object2.movespdx = 0
	
	}
	//other collisions
	if place_meeting(x, y + Object2.movespdy, House){
		Object2.movespdy = 0
	} 
	if place_meeting(x, y + Object2.movespdy, Wall){
		Object2.movespdy = 0;
	}
	if place_meeting(x + movespdx, y, Wall){
		movespdx = 0
	}
	if place_meeting (x, y, Portal){
		room_goto(Fight)
	}
	//dialouge
	if (cd ==1) && (distance_to_object(shaman) < 10) && keyboard_check_pressed(vk_space){
	dialouge([
{
name: "Shaman",
msg: "Thank you for saving me, I can see that the gods have blessed you and you really are the chosen one. Now listen, a terrible anger has befallen the once peaceful Patupaiarehe because they believe that we have stolen their artifact, you must travel north to retrieve it. But first, you need gear, if you go west, in the clearing in the woods between the 2 lakes, you will find a powerful weapon	. Good luck peacemaker."
}])
	}
	
	//if !place_meeting(x, y, ShallowObj){
	//	CDash = 1
	//}
	if place_meeting (x, y + Object2.movespdy, tree){
		Object2.movespdy = 0
	}
	
	if place_meeting (x, y, ShallowObj){
		show_debug_message("Trying to move to: pl collsion ShallowObj");	
		Object2.walkspd *= 0.5
		_collision = true
		Object2.CDash = 0;
	}
	//if !place_meeting(x, y, WaterObj){
	//	CDash = 1
	//}
	x += movespdx
	y += movespdy;
	if place_meeting(x, y, WaterObj){
		show_debug_message("Trying to move to: pl collsion WaterObj");	
		Object2.walkspd *= 0.2;
		_collision = true;
		Object2.CDash = 0;
	};
	if (sprint){
	show_debug_message ("ahahahahahahaaha")
	walkspd = 9
}

	
}


