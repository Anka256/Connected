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
												obj_nextstage.next_stage = true;
											}
										}
									}
									else {
										obj_nextstage.next_stage = true;
									}
								}
							}
						}
						else {
							obj_nextstage.next_stage = true;
						}
					}
				}
			}
			
			else {
				 obj_nextstage.next_stage = true;
			}
		}
	}
}