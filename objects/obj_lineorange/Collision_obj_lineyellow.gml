if (instance_exists(obj_lineyellow)) {
	with(obj_dotorange) {
		if (orangeend) {
			instance_destroy(obj_lineyellow);
			with(obj_dotyellow) drawing = false;
		}
	
		else {
			instance_destroy(obj_lineorange);
			drawing = false;
		}
	}
}