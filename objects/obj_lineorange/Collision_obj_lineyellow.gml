if (instance_exists(obj_lineyellow)) {
	with(obj_dotorange) {
		if (orangeend) {
			layer_sequence_create("ins_balls", 540, 960, seq_fail)
			instance_destroy(obj_lineyellow);
			with(obj_dotyellow) drawing = false;
		}
	
		else {
			layer_sequence_create("ins_balls", 540, 960, seq_fail)
			instance_destroy(obj_lineorange);
			drawing = false;
		}
	}
}