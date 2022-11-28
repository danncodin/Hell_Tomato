/// @ description Player Movement
#region  Movimentacao
var hinput = keyboard_check(vk_right) - keyboard_check(vk_left);

if hinput != 0 
{
	hspeed_ += hinput*acc_;
	hspeed_ = clamp(hspeed_, -speed_, speed_);
}else
{
	hspeed_ = lerp(hspeed_, 0, friction_);
}

if (hspeed_ !=0) image_xscale = sign(hspeed_);

//JUMP
if !place_meeting(x,y+1,oWall)
{
	vspeed_ += grv_;
}else
{
	if keyboard_check(ord("W"))
	{
		vspeed_ = jumpHeight_;
	}	
}

move();
 #endregion

if global.life < 1
{
	room_goto(rGameOver);
}

// WARP
warp();

#region troca os sprites
if (hspeed_ != 0) image_xscale = sign(hspeed_);

if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sPlayerInitialJump;
	if (sign(vspeed_) >0.5) sprite_index = sPlayerFall; else sprite_index = sPlayerInitialJump;
}
else	
{
	if(hspeed_ != 0)
	{
		sprite_index = sPlayerRunning;
	}
}
if hspeed_ = 0
{
	if place_meeting(x,y+1,oWall)
	{
		sprite_index=sPlayerIdle;
	}
}
if vspeed_ != 0
{
	if place_meeting(x,y+1,oWall)
	{
		sprite_index=sPlayerRunning;
	}
}
#endregion	


