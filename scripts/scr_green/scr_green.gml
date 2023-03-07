function scr_green(){
	tap = mouse_check_button(mb_left)
	if (tap) {
		greenstart = position_meeting(mouse_x, mouse_y, obj_dotgreen);
		
		if (greenstart) drawing = true;
	}
	else if (!greenend) drawing = false;
	
	if (drawing && !greenend) instance_create_layer(mouse_x, mouse_y, "ins_balls", obj_linegreen);
	if !drawing instance_destroy(obj_linegreen);
	
	with(instance_find(obj_dotgreen, 0)) {
		if (place_meeting(x, y, obj_linegreen)) global.green0 = true;
		else global.green0 = false;
	}
	with(instance_find(obj_dotgreen, 1)) {
		if (place_meeting(x, y, obj_linegreen)) global.green1 = true;
		else global.green1 = false;
	}
	
	if (global.green1 && global.green0) greenend = true;
}