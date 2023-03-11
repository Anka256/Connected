if !collision_circle(obj_border.x, obj_border.y, (obj_border.sprite_width - 60) / 2, self, true, false) {
	audio_play_sound(snd_fail, 50, false);
	instance_destroy(obj_linepurple);
	with (obj_dotpurple) drawing = false;
}