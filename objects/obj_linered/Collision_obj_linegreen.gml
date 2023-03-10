if (instance_exists(obj_linegreen)) {
	with(obj_dotred) {
		if (redend) {
			instance_destroy(obj_linegreen);
			with(obj_dotgreen) drawing = false;
		}
	
		else {
			instance_destroy(obj_linered);
			drawing = false;
		}
	}
}