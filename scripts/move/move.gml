function move()
{
	// Horizontal Colision
	if place_meeting(x+hspeed_,y,oWall)
	{
		while(!place_meeting(x+sign(hspeed_),y,oWall))
		{
			x += sign(hspeed_);
		}
		hspeed_=0;
	}
	x += hspeed_;

	// Vertical Coillision
	if place_meeting(x,y+vspeed_,oWall)
	{
		while(!place_meeting(x,y+sign(vspeed_),oWall))
		{
			y += sign(vspeed_);
		}
	vspeed_=0;
	}
	y += vspeed_;
}