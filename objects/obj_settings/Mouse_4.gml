if(click ==true)
{
	click=false;
	instance_destroy(obj_quit);
	instance_destroy(obj_restart);
	instance_destroy(obj_tune);
	instance_destroy(obj_mute);
	layer_sequence_create("Instances",obj_settings.x,obj_settings.y,seq_settings_backwards)
	with(obj_mute){flag = true;}
	
}
else 
{
click=true;
layer_sequence_create("Instances",obj_settings.x,obj_settings.y,seq_settings)
with(obj_mute){flag = false;}
}

