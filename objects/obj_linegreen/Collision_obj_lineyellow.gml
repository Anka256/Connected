if (instance_exists(obj_lineyellow)) {
	with(obj_dotorange) {
		if (orangeend) {
			audio_play_sound(snd_fail, 50, false);
			instance_destroy(obj_lineyellow);
			with(obj_dotyellow) drawing = false;
		}
	
		else {
			audio_play_sound(snd_fail, 50, false);
			instance_destroy(obj_lineorange);
			drawing = false;
		}
	}
}