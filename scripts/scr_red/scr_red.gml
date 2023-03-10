function scr_red(){
	tap = mouse_check_button(mb_left)
	if (tap) {
		redstart = position_meeting(mouse_x, mouse_y, obj_dotred); // noktaya basma var'ı
		
		if (redstart) drawing = true; // noktaya basıyorsa çizime başla
	}
	else if (!redend) drawing = false; // noktaya basmıyorsa ve eşleşme yapılmadıysa çizimi durdur
	
	if (drawing && !redend) instance_create_layer(mouse_x, mouse_y, "ins_balls", obj_linered);
	
								// çizim devam ama eşleşme olmamışsa lineredi oluştur sürekli
	if !drawing instance_destroy(obj_linered);
		// çizim durmuşsa önceki lineredleri sil
		// eşleşme olduysa çizimi durdurmuyor o yüzden eşleşen line'ı silmiyor --> line 8
		
	with(instance_find(obj_dotred, 0)) {
		if (place_meeting(x, y, obj_linered)) global.red0 = true;
		else global.red0 = false;
	}
	with(instance_find(obj_dotred, 1)) {
		if (place_meeting(x, y, obj_linered)) global.red1 = true;
		else global.red1 = false;
	}
	// iki noktaya da basmış mıyım check'leri
	// global variable kullandım çünkü with ile yazdığım için 2 nesnenin var'larına tek scriptten erişmek istiyorum
	
	if (global.red1 && global.red0) redend = true; // 2 noktaya da basmışsam çizim sonlandırıcı var' --> line 8
}