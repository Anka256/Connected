if (instance_exists(obj_lineblue)) {
	with(obj_dotred) {
		if (redend) {
			instance_destroy(obj_lineblue);
			with(obj_dotblue) drawing = false;
		}
	
		else {
			instance_destroy(obj_linered);
			drawing = false;
		}
	}
}