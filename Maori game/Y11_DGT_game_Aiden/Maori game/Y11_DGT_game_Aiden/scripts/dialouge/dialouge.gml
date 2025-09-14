function dialouge(_messages){
	if instance_exists(dialouge_obj) return;
	var inst = instance_create_depth(0, 0, 0, dialouge_obj)
	inst.messages = _messages
	inst.current_message = 0;
}