if !place_meeting(x, y, obj_border) {
	instance_destroy(obj_linered);
	with (obj_dotred) drawing = false;
}
else {
	with (obj_dotred) drawing = true;
}