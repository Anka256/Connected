if (instance_exists(obj_lineyellow)) {
	with(obj_dotred) {
		if (redend) {
			instance_destroy(obj_lineyellow);
			with(obj_dotyellow) drawing = false;
		}
		
		else {
			instance_destroy(obj_linered);
			drawing = false;
		}
	}
}