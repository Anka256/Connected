
if !collision_circle(obj_border.x, obj_border.y, (obj_border.sprite_width - 60) / 2, self, true, false) {
	instance_destroy(obj_lineblue);
	with (obj_dotblue) drawing = false;
}