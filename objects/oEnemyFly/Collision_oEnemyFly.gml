/// @description soft collide
if point_in_rectangle(x, y, 0, 0, room_width, room_height)
{
	if x == other.x && y == other.y
	{
		x += sign(other);
	}
	var dir = point_direction(other.x, other.y, x, y);
	hspeedPush_ += lengthdir_x(.1, dir);
	vspeedPush_ += lengthdir_y(.1, dir);
}