function scr_stagetranstion() {
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
	
	if instance_exists(obj_dotpurple) {
		
		
		show_debug_message("dotpurp var")
		if (instance_number(obj_dotpurple) == 4) || (obj_dotpurple.x > 1080) { 
			show_debug_message("tanımlanma var")
			if (instance_number(obj_dotpurple) == 4) {
				show_debug_message("4 tane purp var")
				var transpurple1 = instance_find(obj_dotpurple, 2);
				var transpurple2 = instance_find(obj_dotpurple, 3);
			}
			else{
				show_debug_message("4 tane purp yok")
				var transpurple1 = instance_find(obj_dotpurple, 0);
				var transpurple2 = instance_find(obj_dotpurple, 1);
			}
			tp1x = transpurple1.x;
			tp1y = transpurple1.y;
			tp2x = transpurple2.x;
			tp2y = transpurple2.y;
	
			
			instance_destroy(transpurple1);
			instance_destroy(transpurple2);
			show_debug_message(string(tp1x) + " " + string(tp1y))
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
	
	//#region dot transition
	
	//if instance_exists(obj_dotpurple) {
	//	show_debug_message("dotpurp var")
	//	if (instance_number(obj_dotpurple) == 4) || (obj_dotpurple.x > 1080) { 
	//		show_debug_message("tanımlanma var")
	//		var transpurple1 = instance_find(obj_dotpurple, 2);
	//		var transpurple2 = instance_find(obj_dotpurple, 3);
			
	//		if (obj_nextstage.next_stage) {
	//			instance_activate_object(transpurple1);
	//			instance_activate_object(transpurple1);
	//			layer_sequence_create("ins_balls", transpurple1.x, transpurple1.y, seq_transdotpurple);
	//			layer_sequence_create("ins_balls", transpurple2.x, transpurple2.y, seq_transdotpurple);
	//			if instance_exists(transpurple1) show_debug_message("trans var");
	//			instance_destroy(transpurple1);
	//			instance_destroy(transpurple2);
	//		}
	//		else {
	//			instance_deactivate_object(transpurple1);
	//			instance_deactivate_object(transpurple2);
	//		}
	//	}
	//}
	
	//if instance_exists(obj_dotgreen) {
	//	if (instance_number(obj_dotgreen) == 4) || (obj_dotgreen.x > 1080) {
	//		var transgreen1  = instance_find(obj_dotgreen, 2);
	//		var transgreen2  = instance_find(obj_dotgreen, 3);
	//		instance_deactivate_object(transgreen1);
	//		instance_deactivate_object(transgreen2);
	//		if (obj_nextstage.next_stage) {
	//			instance_activate_object(transgreen1);
	//			instance_activate_object(transgreen2);
	//			layer_sequence_create("ins_balls", transgreen1.x, transgreen1.y, seq_transdotgreen);
	//			layer_sequence_create("ins_balls", transgreen2.x, transgreen2.y, seq_transdotgreen);
	//			instance_destroy(transgreen1);
	//			instance_destroy(transgreen2);
	//		}
	//	}
	//}
	
	//if instance_exists(obj_dotorange) {
	//	if (instance_number(obj_dotorange) == 4) || (obj_dotorange.x > 1080) {
	//		var transorange1 = instance_find(obj_dotorange, 2);
	//		var transorange2 = instance_find(obj_dotorange, 3);
	//		if (obj_nextstage.next_stage) {
	//			layer_sequence_create("ins_balls", transorange1.x, transorange1.y, seq_transdotorange);
	//			layer_sequence_create("ins_balls", transorange2.x, transorange2.y, seq_transdotorange);
	//			instance_destroy(transorange1);
	//			instance_destroy(transorange2);
	//		}
	//	}
	//}
	
	//if instance_exists(obj_dotyellow) {
	//	if (instance_number(obj_dotyellow) == 4) || (obj_dotyellow.x > 1080) {
	//		var transyellow1 = instance_find(obj_dotyellow, 2);
	//		var transyellow2 = instance_find(obj_dotyellow, 3);
	//		if (obj_nextstage.next_stage) {
	//			layer_sequence_create("ins_balls", transyellow1.x, transyellow1.y, seq_transdotyellow);
	//			layer_sequence_create("ins_balls", transyellow2.x, transyellow2.y, seq_transdotyellow);
	//			instance_destroy(transyellow1);
	//			instance_destroy(transyellow2);
	//		}
	//	}
	//}
		
	//#endregion
	
	//#region border transition
	
	//if instance_exists(obj_bordercircle) {
	//	if (instance_number(obj_bordercircle) == 2) || (obj_bordercircle.x > 1080) {
	//		var transborder_circle = instance_find(obj_bordercircle, 1);
	//		if (obj_nextstage.next_stage) {
	//			layer_sequence_create("ins_balls", transborder_circle.x, transborder_circle.y, seq_transborder_circle);
	//			instance_destroy(transborder_circle);
	//		}
	//	}
	//}
	
	//if instance_exists(obj_bordersquare) {
	//	if (instance_number(obj_bordersquare) == 2) || (obj_bordersquare.x > 1080) {
	//		var transborder_square = instance_find(obj_bordersquare, 1);
	//		if (obj_nextstage.next_stage) {
	//			layer_sequence_create("ins_balls", transborder_square.x, transborder_square.y, seq_transborder_square);
	//			instance_destroy(transborder_square);
	//		}
	//	}
	//}
	
	//#endregion
}


