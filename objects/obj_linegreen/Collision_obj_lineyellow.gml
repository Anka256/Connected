if (instance_exists(obj_lineyellow)) {
	with(obj_dotgreen) {
		if (greenend) {
			instance_destroy(obj_lineyellow);
			with(obj_dotyellow) drawing = false;
		}
	
		else {
			instance_destroy(obj_linegreen);
			drawing = false;
		}
	}
}