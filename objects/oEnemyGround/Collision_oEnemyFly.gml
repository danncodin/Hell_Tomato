/// @description soft collide
if point_in_rectangle(x, y, 0, 0, room_width, room_height)
{
	var dir = point_direction(other.x, other.y, x, y);
	hspeedPush_ += lengthdir_x(.25, dir);
	vspeedPush_ += lengthdir_y(.25, dir);
}