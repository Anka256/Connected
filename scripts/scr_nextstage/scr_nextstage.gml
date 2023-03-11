function scr_nextstage(){
	with(obj_dotpurple) {
		if (purpleend) {
			if (instance_exists(obj_dotgreen)) {
				with(obj_dotgreen) {
					if (greenend) {
						if (instance_exists(obj_dotorange)) {
							with(obj_dotorange) {
								if (orangeend) {
									if (instance_exists(obj_dotyellow)) {
										with(obj_dotyellow) {
											if (yellowend) {
												audio_play_sound(snd_positive, 40, false);
												room_goto_next();
											}
										}
									}
									else {
										audio_play_sound(snd_positive, 40, false);
										room_goto_next();
									}
								}
							}
						}
						else {
							audio_play_sound(snd_positive, 40, false);
							room_goto_next();
							 }
					}
				}
			}
			
			else {
				 audio_play_sound(snd_positive, 40, false);
				 room_goto_next();
				 }
		}
	}
}