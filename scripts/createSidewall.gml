side_wall = instance_create(argument0, argument1, oSidewall)
side_wall.wall[0] = argument0;
side_wall.wall[1] = argument1;
side_wall.wall[2] = argument0 + global.wall_thickness;
side_wall.wall[3] = argument1 + room_height + global.wall_thickness*2;
side_wall.side = argument2;
