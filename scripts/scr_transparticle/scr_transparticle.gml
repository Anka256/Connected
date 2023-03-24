function scr_transparticle() {
	// obj_nextstage tarafından call'lanıyor
	particle_count = 38;
	if instance_exists(obj_dotpurple) {
		var purplelocate1 = instance_find(obj_dotpurple, 0);
		var purplelocate2 = instance_find(obj_dotpurple, 1);
		part_type_sprite(particle_system, spr_particlepurple, 1, 0, 0);
		part_particles_create(particle_system, purplelocate1.x, purplelocate1.y, transparticle, particle_count);
		part_particles_create(particle_system, purplelocate2.x, purplelocate2.y, transparticle, particle_count);
	}
	if instance_exists(obj_dotgreen) {
		var greenlocate1 = instance_find(obj_dotgreen, 0);
		var greenlocate2 = instance_find(obj_dotgreen, 1);
		part_type_sprite(transparticle, spr_particlegreen, 1, 0, 0);
		part_particles_create(particle_system, greenlocate1.x, greenlocate1.y, transparticle, particle_count);
		part_particles_create(particle_system, greenlocate2.x, greenlocate2.y, transparticle, particle_count);
	}
	if instance_exists(obj_dotorange) {
		var orangelocate1 = instance_find(obj_dotorange, 0);
		var orangelocate2 = instance_find(obj_dotorange, 1);
		part_type_sprite(transparticle, spr_particleorange, 1, 0, 0);
		part_particles_create(particle_system, orangelocate1.x, orangelocate1.y, transparticle, particle_count);
		part_particles_create(particle_system, orangelocate2.x, orangelocate2.y, transparticle, particle_count);
	}
	if instance_exists(obj_dotyellow) {
		var yellowlocate1 = instance_find(obj_dotyellow, 0);
		var yellowlocate2 = instance_find(obj_dotyellow, 1);
		part_type_sprite(transparticle, spr_particleyellow, 1, 0, 0);
		part_particles_create(particle_system, yellowlocate1.x, yellowlocate1.y, transparticle, particle_count);
		part_particles_create(particle_system, yellowlocate2.x, yellowlocate2.y, transparticle, particle_count);
	}
}