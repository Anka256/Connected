if place_meeting(x, y, obj_linegreen) obj_dotgreen.drawing = false ;
if place_meeting(x, y, obj_linepurple){
	instance_destroy(obj_fixpurple);
	instance_destroy(obj_linepurple);
	obj_dotpurple.drawing = false;
}
if place_meeting(x, y, obj_lineyellow) obj_dotyellow.drawing = false;

if obj_dotorange.orangeend instance_destroy(obj_doororange);