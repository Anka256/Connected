if (instance_exists(obj_linegreen)) {
	with(obj_dotpurple) {
		if (purpleend) {
			instance_destroy(obj_linegreen);
			with(obj_dotgreen) drawing = false;
		}
	
		else {
			instance_destroy(obj_linepurple);
			drawing = false;
		}
	}
}