if (instance_exists(instance_find(obj_lineyellow,instance_number(obj_lineyellow)-3))) {

	var last = instance_find(obj_lineyellow,instance_number(obj_lineyellow)-1);
	var last2 = instance_find(obj_lineyellow,instance_number(obj_lineyellow)-3);

	x = last2.x
	y = last2.y

	image_angle = point_direction(last2.x,last2.y,last.x,last.y);

	self.image_xscale = point_distance(last2.x,last2.y,last.x,last.y)/14;
}