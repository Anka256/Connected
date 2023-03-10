if (instance_exists(obj_linegreen)) {
	with(obj_dotblue) {
		if (blueend) {
			instance_destroy(obj_linegreen);
			with(obj_dotgreen) drawing = false;
		}
	
		else {
			instance_destroy(obj_lineblue);
			drawing = false;
		}
	}
}