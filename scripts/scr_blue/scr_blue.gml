function scr_blue(){
	tap = mouse_check_button(mb_left)
	if (tap) {
		bluestart = position_meeting(mouse_x, mouse_y, obj_dotblue);
		
		if (bluestart) drawing = true;
	}
	else if (!blueend) drawing = false;
	
	if (drawing && !blueend) instance_create_layer(mouse_x, mouse_y, "ins_balls", obj_lineblue);
	if !drawing instance_destroy(obj_lineblue);
	
	with(instance_find(obj_dotblue, 0)) {
		if (place_meeting(x, y, obj_lineblue)) global.blue0 = true;
		else global.blue0 = false;
	}
	with(instance_find(obj_dotblue, 1)) {
		if (place_meeting(x, y, obj_lineblue)) global.blue1 = true;
		else global.blue1 = false;
	}
	
	if (global.blue1 && global.blue0) blueend = true;
}