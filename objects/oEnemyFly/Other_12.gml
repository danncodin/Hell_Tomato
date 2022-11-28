/// @description Hit State

#region Push Force
move_push();
hspeedPush_ = lerp(hspeedPush_, 0, .1,);
vspeedPush_ = lerp(vspeedPush_, 0, .1);

if point_distance(0, 0, hspeedPush_, vspeedPush_) < 1
{
	state_ = MOVEMENT_; 
	
}
#endregion


