switch(border) {
	case obj_bordercircle:
	    if (!position_meeting(x, y, border)) {
			if(obj_settings.tunes){audio_play_sound(snd_fail, 50, false);}
			instance_destroy(obj_lineorange);
			with (obj_dotorange) drawing = false;
		}
	break;
	
	case obj_bordersquare:
	    if (!position_meeting(x, y, border)) {
			if(obj_settings.tunes){audio_play_sound(snd_fail, 50, false);}
			instance_destroy(obj_lineorange);
			with (obj_dotorange) drawing = false;
		}
	break;
		
	    default:
		
}