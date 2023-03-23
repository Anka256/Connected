if (instance_exists(obj_lineorange)) {
	with(obj_dotgreen) {
		if (greenend) {
			if(obj_settings.tunes){audio_play_sound(snd_fail, 50, false);}
			instance_destroy(obj_lineorange);
			with(obj_dotorange) drawing = false;
		}
	
		else {
			if(obj_settings.tunes){audio_play_sound(snd_fail, 50, false);}
			instance_destroy(obj_linegreen);
			drawing = false;
		}
	}
}