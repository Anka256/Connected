function scr_whichcolor(){
	tap = mouse_check_button(mb_left)
	if (tap) {
		redstart = position_meeting(mouse_x, mouse_y, obj_dotred);
		
		if (redstart) drawing = true;
	}
	else if (!redend) drawing = false;
	
	if (drawing && !redend) instance_create_layer(mouse_x, mouse_y, "ins_balls", obj_linered);
	if !drawing instance_destroy(obj_linered);
	
	with(instance_find(obj_dotred, 0)) {
		if (place_meeting(x, y, obj_linered)) global.red0 = true;
		else global.red0 = false;
	}
	with(instance_find(obj_dotred, 1)) {
		if (place_meeting(x, y, obj_linered)) global.red1 = true;
		else global.red1 = false;
	}
	
	if (global.red1 && global.red0) redend = true;
}