//player step event (runs every frame)
//gets input from user
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
inputDirection = point_direction(0,0, keyRight-keyLeft, keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);
sprint = keyboard_check(vk_shift);
slash = keyboard_check(vk_space);
if (!is_dashing){
	walkspd = sprint ? 9: 5;
}
equip()
DDur = DDur - 1;
Hcool = Hcool -1;
Attack_slash()
Dash();
Shield();

//movement
movespdx = inputMagnitude ? lengthdir_x(walkspd, inputDirection) : 0;
movespdy = inputMagnitude ? lengthdir_y(walkspd, inputDirection) : 0;
walkspd = max(abs(movespdx), abs(movespdy));
//movement commitment and collisions:
player_collision();
//handling animations using a state machine
if ( Te == 1){
	
	 if (inputMagnitude){
		sprite_index = run_spreart;
		image_speed = sprint ? 2 : 3;
		show_debug_message("running")
		
	} else if (mouse_check_button(mb_left)){
		sprite_index = Spearhit;
		show_debug_message("hitting")
		
	} else if (is_shield == 1){
		sprite_index = Player_shield;
		image_speed = 0;
	}  else	if (!inputMagnitude) {
		sprite_index = stand_speart;
		show_debug_message("standing")
	}

}

else if  Te == 0{
	if (inputMagnitude) && (!keyboard_check_pressed(ord("E"))) && (!attack){
		sprite_index = Sprite2
		image_speed = sprint ? 2 : 3
	}
	else if (is_shield == 1){
		sprite_index = Player_shield;
		image_speed = 0;
	}
	else if (mouse_check_button_pressed(mb_left)){
		sprite_index = Player_hitf
	}
	if mouse_check_button(mb_left) && inputMagnitude > 0{
		sprite_index = runhit
	}

	if  CDash == 10 && keyboard_check_pressed(ord("E")){
		sprite_index = sDash
	}

	else if (!inputMagnitude) {
		sprite_index = Sprite40;
		image_speed = 1
	}
}

// portal logic
// die
if  hp <= 0{
	//room_goto(TitleScreen)
	show_debug_message ("dead bitch")
}
show_debug_message (hp);
 
