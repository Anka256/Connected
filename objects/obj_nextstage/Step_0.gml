

if (next_stage && stage_transition) {
	scr_transparticle();
	alarm_set(1,30);
	stage_transition = false;
}

if !(room == Game15)  scr_nextstage();


if (layer_shift) {
	elements = layer_get_all_elements("ins_balls");
	for (var i = 0; i < array_length(elements); i++)
	{
		if (layer_get_element_type(elements[i]) == layerelementtype_instance)
	    {
	        var layerelement = elements[i];
	        var inst = layer_instance_get_instance(layerelement);
	        inst.x -= 18;
	    }
	}
}


if (next_stage) {
	if (alarm[0] < 0) {
		alarm[0] = 90;
	}
}

