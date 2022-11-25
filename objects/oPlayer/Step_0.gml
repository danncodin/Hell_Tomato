
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
	if keyboard_check(ord("Z"))
	{
		vspeed_ = jumpHeight_;
	}	
}

scrMove();
 #endregion
 
#region Tiro
key_shoot=keyboard_check_pressed(ord("X")) // SHOOT

var flipped=direction;
var gun_x=(x+4)*(flipped) // Atirar na direção que o personagem está
var _xx = x + lengthdir_x(15,image_angle) // Posição da origem do tiro
var y_offset= lengthdir_y(-20,image_angle)


if key_shoot and global.bullets > 0
{
	with (instance_create_layer(_xx,y+10,"Shoot",oShoot))
	{
		global.bullets--;
		// VELOCIDADE DO TIRO
		speed = 5;
		// DIREÇÃO
		direction = -90 + 90 * other.image_xscale;
		// ANGULO
		image_angle=direction;
	}
	
}
#endregion



if global.life < 1
{
	game_restart();
}


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