switch(border) {
	case obj_bordercircle:
	    if (!position_meeting(x, y, border)) {
			audio_play_sound(snd_fail, 50, false);
			instance_destroy(obj_lineyellow);
			with (obj_dotyellow) drawing = false;
		}
	break;
	
	case obj_bordersquare:
	    if (!position_meeting(x, y, border)) {
			audio_play_sound(snd_fail, 50, false);
			instance_destroy(obj_lineyellow);
			with (obj_dotyellow) drawing = false;
		}
	break;
		
	    default:
		
}