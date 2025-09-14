function Shield(){
	shield = keyboard_check(vk_tab)
	if (shield){
		Object2.is_shield = 1
	}
	if (!shield){
		Object2.is_shield = 0
	}
}