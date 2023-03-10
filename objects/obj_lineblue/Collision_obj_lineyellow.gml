if (instance_exists(obj_lineyellow)) {
	with(obj_dotblue) {
		if (blueend) {
			instance_destroy(obj_lineyellow);
			with(obj_dotyellow) drawing = false;
		}
	
		else {
			instance_destroy(obj_lineblue);
			drawing = false;
		}
	}
}