/// @description soft collide
var dir = point_direction(other.x, other.y, x, y);
hspeedPush_ += lengthdir_x(.25, dir);
vspeedPush_ += lengthdir_y(.25, dir);

