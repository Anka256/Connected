function scr_whichcolor(){
	tap = mouse_check_button(mb_left)
	tap_start = position_meeting(mouse_x, mouse_y, self)
		if (tap) {
			instance_create_layer(mouse_x, mouse_y, "ins_balls", obj_linecolor)
		}
		switch self {
			case obj_dotred:
				scr_draw(obj_linered)
				
		}
}