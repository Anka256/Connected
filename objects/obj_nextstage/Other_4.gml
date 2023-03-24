transparticle = part_type_create();
particle_system = part_system_create_layer(layer, true);

part_type_alpha2(transparticle, 1, 0.6);
part_type_speed(transparticle, 7, 10, -0.1, 0);
part_type_blend(transparticle, false);
part_type_life(transparticle, 35, 50);
part_type_direction(transparticle, 60, 120, 0, 5);
part_type_gravity(transparticle, 0.48, 270);
part_type_size(transparticle, 1, 1, 0.02, 0.03);
part_type_orientation(transparticle, 0, 259, 0, 5, true);

