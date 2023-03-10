if (instance_exists(obj_lineorange)) {
	with(obj_dotpurple) {
		if (purpleend) {
			instance_destroy(obj_lineorange);
			with(obj_dotorange) drawing = false;
		}
	
		else {
			instance_destroy(obj_linepurple);
			drawing = false;
		}
	}
}