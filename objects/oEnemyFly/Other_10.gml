/// @description Movement State


if instance_exists(oPlayer)
{
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
		vspeedPush_ = lerp(vspeedPush_, 0, .1);
	}
	#endregion



	#region Attack
	if distance_to_object(oPlayer) < 48
	{
		state_ = ATTACK_;
	}
	#endregion
}