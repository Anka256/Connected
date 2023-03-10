if !collision_circle(obj_border.x, obj_border.y, (obj_border.sprite_width - 60) / 2, self, true, false) {
	instance_destroy(obj_linegreen);
	with (obj_dotgreen) drawing = false;
}