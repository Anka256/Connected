function scr_yellow(){
	tap = mouse_check_button(mb_left)
	if (tap) {
		yellowstart = position_meeting(mouse_x, mouse_y, obj_dotyellow);
		
		if (yellowstart) drawing = true;
	}
	else if (!yellowend) drawing = false;
	
	if (drawing && !yellowend) instance_create_layer(mouse_x, mouse_y, "ins_balls", obj_lineyellow);
	if !drawing {
		instance_destroy(obj_lineyellow);
		instance_destroy(obj_fixyellow);
	}
	
	with(instance_find(obj_dotyellow, 0)) {
		if (place_meeting(x, y, obj_lineyellow)) global.yellow0 = true;
		else global.yellow0 = false;
	}
	with(instance_find(obj_dotyellow, 1)) {
		if (place_meeting(x, y, obj_lineyellow)) global.yellow1 = true;
		else global.yellow1 = false;
	}
	
	if (global.yellow1 && global.yellow0) yellowend = true;
}