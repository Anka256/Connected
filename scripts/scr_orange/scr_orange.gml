function scr_orange(){
	tap = mouse_check_button(mb_left)
	if (tap) {
		orangestart = position_meeting(mouse_x, mouse_y, obj_dotorange);
		
		if (orangestart) drawing = true;
	}
	else if (!orangeend) drawing = false;
	
	if (drawing && !orangeend) instance_create_layer(mouse_x, mouse_y, "ins_balls", obj_lineorange);
	if !drawing {
		instance_destroy(obj_lineorange);
		instance_destroy(obj_fixorange);
	}
	
	with(instance_find(obj_dotorange, 0)) {
		if (place_meeting(x, y, obj_lineorange)) global.orange0 = true;
		else global.orange0 = false;
	}
	with(instance_find(obj_dotorange, 1)) {
		if (place_meeting(x, y, obj_lineorange)) global.orange1 = true;
		else global.orange1 = false;
	}
	
	if (global.orange1 && global.orange0) orangeend = true;
}