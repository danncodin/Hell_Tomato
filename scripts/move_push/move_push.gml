function move_push(){
	if place_meeting(x+hspeedPush_, y, oWall)
	{
		while !place_meeting(x+sign(hspeedPush_), y, oWall)
		{
			x += sign (hspeedPush_)
		}
		hspeedPush_ = 0;
	}
	x += hspeedPush_;

	if place_meeting(x, y+vspeedPush_, oWall)
	{
	while !place_meeting(x, y+sign(vspeedPush_), oWall)
	{
		y += sign (vspeedPush_);
	}
	vspeedPush_ = 0;
	}
	y += vspeedPush_;
}