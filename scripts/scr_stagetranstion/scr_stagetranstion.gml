function scr_stagetranstion() {
	#region start sequences
	if obj_nextstage.purpleactive && obj_nextstage.next_stage {
		layer_sequence_create("ins_balls", tp1x, tp1y, seq_transdotpurple);
		layer_sequence_create("ins_balls", tp2x, tp2y, seq_transdotpurple);
		obj_nextstage.purpleactive = false;
	}
	if obj_nextstage.greenactive && obj_nextstage.next_stage {
		layer_sequence_create("ins_balls", tg1x, tg1y, seq_transdotgreen);
		layer_sequence_create("ins_balls", tg2x, tg2y, seq_transdotgreen);
		obj_nextstage.greenactive = false;
	}
	if obj_nextstage.orangeactive && obj_nextstage.next_stage {
		layer_sequence_create("ins_balls", to1x, to1y, seq_transdotorange);
		layer_sequence_create("ins_balls", to2x, to2y, seq_transdotorange);
		obj_nextstage.orangeactive = false;
	}
	if obj_nextstage.yellowactive && obj_nextstage.next_stage {
		layer_sequence_create("ins_balls", ty1x, ty1y, seq_transdotyellow);
		layer_sequence_create("ins_balls", ty2x, ty2y, seq_transdotyellow);
		obj_nextstage.yellowactive = false;
	}
	if obj_nextstage.bordercactive && obj_nextstage.next_stage {
		layer_sequence_create("ins_balls", tbcx, tbcy, seq_transborder_circle);
		obj_nextstage.bordercactive = false;
	}
	if obj_nextstage.bordersactive && obj_nextstage.next_stage {
		layer_sequence_create("ins_balls", tbsx, tbsy, seq_transborder_square);
		obj_nextstage.bordersactive = false;
	}
	#endregion
	
	#region activate next pattern
	if instance_exists(obj_dotpurple) {
		if (instance_number(obj_dotpurple) == 4) || (obj_dotpurple.x > 1080) { 
			if (instance_number(obj_dotpurple) == 4) {
				var transpurple1 = instance_find(obj_dotpurple, 2);
				var transpurple2 = instance_find(obj_dotpurple, 3);
			}
			else{
				var transpurple1 = instance_find(obj_dotpurple, 0);
				var transpurple2 = instance_find(obj_dotpurple, 1);
			}
			tp1x = transpurple1.x;
			tp1y = transpurple1.y;
			tp2x = transpurple2.x;
			tp2y = transpurple2.y;

			instance_destroy(transpurple1);
			instance_destroy(transpurple2);
			obj_nextstage.purpleactive = true;
		}
	}
	
	if instance_exists(obj_dotgreen) {
		if (instance_number(obj_dotgreen) == 4) || (obj_dotgreen.x > 1080) { 
			if (instance_number(obj_dotgreen) == 4) {
				var transgreen1 = instance_find(obj_dotgreen, 2);
				var transgreen2 = instance_find(obj_dotgreen, 3);
			}
			else{
				var transgreen1 = instance_find(obj_dotgreen, 0);
				var transgreen2 = instance_find(obj_dotgreen, 1);
			}
			
			tg1x = transgreen1.x;
			tg1y = transgreen1.y;
			tg2x = transgreen2.x;
			tg2y = transgreen2.y;

			instance_destroy(transgreen1);
			instance_destroy(transgreen2);
			obj_nextstage.greenactive = true;
		}
	}
	
	if instance_exists(obj_dotorange) {
		if (instance_number(obj_dotorange) == 4) || (obj_dotorange.x > 1080) { 
			if (instance_number(obj_dotorange) == 4) {
				var transorange1 = instance_find(obj_dotorange, 2);
				var transorange2 = instance_find(obj_dotorange, 3);
			}
			else{
				var transorange1 = instance_find(obj_dotorange, 0);
				var transorange2 = instance_find(obj_dotorange, 1);
			}
			
			to1x = transorange1.x;
			to1y = transorange1.y;
			to2x = transorange2.x;
			to2y = transorange2.y;
			
			instance_destroy(transorange1);
			instance_destroy(transorange2);
			obj_nextstage.orangeactive = true;
		}
	}
	
	if instance_exists(obj_dotyellow) {
		if (instance_number(obj_dotyellow) == 4) || (obj_dotyellow.x > 1080) { 
			if (instance_number(obj_dotyellow) == 4) {
				var transyellow1 = instance_find(obj_dotyellow, 2);
				var transyellow2 = instance_find(obj_dotyellow, 3);
			}
			else{
				var transyellow1 = instance_find(obj_dotyellow, 0);
				var transyellow2 = instance_find(obj_dotyellow, 1);
			}
			
			ty1x = transyellow1.x;
			ty1y = transyellow1.y;
			ty2x = transyellow2.x;
			ty2y = transyellow2.y;
			
			instance_destroy(transyellow1);
			instance_destroy(transyellow2);
			obj_nextstage.yellowactive = true;
		}
	}
	
	if instance_exists(obj_bordercircle) {
		if (instance_number(obj_bordercircle) == 2) || (obj_bordercircle.x > 1080) { 
			if (instance_number(obj_bordercircle) == 2) {
				var transborderc = instance_find(obj_bordercircle, 1);
			}
			else{
				var transborderc = instance_find(obj_bordercircle, 0);
			}
			
			tbcx = transborderc.x;
			tbcy = transborderc.y;
			
			instance_destroy(transborderc);
			obj_nextstage.bordercactive = true;
		}
	}
	
	if instance_exists(obj_bordersquare) {
		if (instance_number(obj_bordersquare) == 2) || (obj_bordersquare.x > 1080) { 
			if (instance_number(obj_bordercircle) == 2) {
				var transborders = instance_find(obj_bordersquare, 1);
			}
			else{
				var transborders = instance_find(obj_bordersquare, 0);
			}
			
			tbsx = transborders.x;
			tbsy = transborders.y;
			
			instance_destroy(transborders);
			obj_nextstage.bordersactive = true;
		}
	}
	#endregion
}