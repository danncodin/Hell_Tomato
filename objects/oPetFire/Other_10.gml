/// @Description Movement State
#region MOVE
var dir = point_direction(x, y, oPlayer.x, oPlayer.y);
hspeed_ = lengthdir_x(speed_, dir);
vspeed_ = lengthdir_y(speed_, dir);
move();
#endregion

#region Push Force
move_push();
if !place_meeting(x, y, oEnemyFly)
{
	hspeedPush_ = lerp(hspeedPush_, 0, .1,);
	vspeedPush_ = lerp(vspeed_, 0, .1);
}
if !place_meeting(x, y, oPlayer)
{
	hspeedPush_ = lerp(hspeedPush_, 0, .1,);
	vspeedPush_ = lerp(vspeed_, 0, .1);
}

#endregion





