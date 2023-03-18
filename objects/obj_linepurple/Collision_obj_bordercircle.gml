if !place_meeting(x, y, obj_bordercircle) {
	instance_destroy(obj_linepurple);
	with (obj_dotpurple) drawing = false;
}
else {
	with (obj_dotpurple) drawing = true;
}