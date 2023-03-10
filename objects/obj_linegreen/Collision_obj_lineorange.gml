if (instance_exists(obj_lineorange)) {
	with(obj_dotgreen) {
		if (greenend) {
			instance_destroy(obj_lineorange);
			with(obj_dotorange) drawing = false;
		}
	
		else {
			instance_destroy(obj_linegreen);
			drawing = false;
		}
	}
}