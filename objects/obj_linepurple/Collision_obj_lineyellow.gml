if (instance_exists(obj_lineyellow)) {
	with(obj_dotpurple) {
		if (purpleend) {
			instance_destroy(obj_lineyellow);
			with(obj_dotyellow) drawing = false;
		}
		
		else {
			instance_destroy(obj_linepurple);
			drawing = false;
		}
	}
}