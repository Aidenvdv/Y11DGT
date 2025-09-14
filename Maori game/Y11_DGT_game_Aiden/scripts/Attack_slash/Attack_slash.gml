function Attack_slash() {
    attack = mouse_check_button_pressed(mb_left);
    var enemy = instance_nearest(x, y, EnemyObj);
    var Darkenemy = instance_nearest(x, y, DarkObj);
    var player = instance_nearest(x, y, Object2);
    var senemy = instance_nearest(x, y, ESP1);

    if (instance_exists(player) && instance_exists(FistObj)) {
        player.Hcool -= 1;

        if (Te == 1) {
            dam = 7;
            Ddam = 16;
        } else {
            dam = 1;
            Ddam = 7;
        }

        if (!attack && enemy != noone) {
            player.hitted = 0;
            enemy.sad = 1;
        }
		if (Whiro != noone && attack && Hcool <= 0 && FistObj.Whit == 1 && distance_to_object(Whiro) < 20){
			Hcool = 30;
			image_speed = 1;
			player.hitted =1;
			Whiro.Whp -= dam;
			CDash = clamp(CDash +1, 0, 10);
		}
        if (senemy != noone && attack && Hcool <= 0 && FistObj.Shit == 1) {
            Hcool = 30;
            image_speed = 1;
            player.hitted = 1;
            senemy.SEhealth -= dam;
			show_debug_message("y8uijroksjodknvisdjkj")
            CDash = clamp(CDash + 1, 0, 10);
            
        }

        if (Darkenemy != noone && mouse_check_button(mb_left) && Hcool <= 0 && FistObj.Dhit == 0) {
            player.Hcool = 20;
            show_debug_message("hit");
            image_speed = 1;
            player.hitted = 1;
            Darkenemy.Dhealth -= dam;
            CDash = clamp(CDash + 1, 0, 10);
        }

        if (enemy != noone && mouse_check_button(mb_left) && Hcool <= 0 && FistObj.hit == 1) {
            player.Hcool = 20;
            show_debug_message("hit");
            image_speed = 1;
            player.hitted = 1;
            enemy.Ehealth -= dam;
            CDash = clamp(CDash + 1, 0, 10);
            enemy.sad = 0;
        }

        if (player.is_shield == 1) {
            Chit = 1;
        }

        if (!mouse_check_button(mb_left)) {
            sprite_index = Sprite2;
        }
    }
}
