/// @description Create a Bullet
var dir = point_direction(x, y, mouse_x, mouse_y);
var flipped =  (mouse_x > x) * 2 - 1;
var gun_x = x-4*flipped;
var x_offset = lengthdir_x(20, dir);
var y_offset = lengthdir_y(20, dir);
var bullet = instance_create_layer(gun_x+x_offset, y+y_offset, "Shoot", oShoot);

bullet.direction = dir;
bullet.image_angle = dir;