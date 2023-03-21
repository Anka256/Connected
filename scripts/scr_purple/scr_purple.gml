function scr_purple(){
	
	tap = mouse_check_button(mb_left)
	if (tap) {
		purplestart = position_meeting(mouse_x, mouse_y, obj_dotpurple); // noktaya basma var'ı
		
		if (purplestart) drawing = true; // noktaya basıyorsa çizime başla
	}
	else if (!purpleend) drawing = false; // noktaya basmıyorsa ve eşleşme yapılmadıysa çizimi durdur
	
	if (drawing && !purpleend) instance_create_layer(mouse_x, mouse_y, "ins_balls", obj_linepurple);
	
								// çizim devam ama eşleşme olmamışsa linepurplei oluştur sürekli
	if !drawing {
		instance_destroy(obj_linepurple);
		instance_destroy(obj_fixpurple);
	}
	
		// çizim durmuşsa önceki linepurpleleri sil
		// eşleşme olduysa çizimi durdurmuyor o yüzden eşleşen line'ı silmiyor --> line 8
		
	with(instance_find(obj_dotpurple, 0)) {
		if (place_meeting(x, y, obj_linepurple)) global.purple0 = true;
		else global.purple0 = false;
	}
	with(instance_find(obj_dotpurple, 1)) {
		if (place_meeting(x, y, obj_linepurple)) global.purple1 = true;
		else global.purple1 = false;
	}
	// iki noktaya da basmış mıyım check'leri
	// global variable kullandım çünkü with ile yazdığım için 2 nesnenin var'larına tek scriptten erişmek istiyorum
	
	if (global.purple1 && global.purple0) purpleend = true; // 2 noktaya da basmışsam çizim sonlandırıcı var' --> line 8
}