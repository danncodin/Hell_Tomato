#region Controles
key_right=keyboard_check(vk_right) //RIGHT D
key_left=keyboard_check(vk_left) //LEFT A
key_jump=keyboard_check(ord("Z")) //JUMP SPACE
key_shoot=keyboard_check_pressed(ord("X")) // SHOOT
#endregion

#region  Movimentacao
var move= key_right - key_left

hspeed_ = move * spd;

vspd = vspd + grv;

if (hspeed_ !=0) image_xscale = sign(hspeed_);

//COLISÃO HORIZONTAL 
if place_meeting(x+hspeed_,y,oWall)
{
	while(!place_meeting(x+sign(hspeed_),y,oWall))
	{
		x=x+sign(hspeed_);
	}
hspeed_=0;
}
x=x+hspeed_;

//COLISÃO VERTICAL
if place_meeting(x,y+vspeed_,oWall)
{
	while(!place_meeting(x,y+sign(vspeed_),oWall))
	{
		y=y+sign(vspeed_);
	}
vspeed_=0;
}
y=y+vspeed_;

//JUMP
if place_meeting(x,y+1,oWall) and key_jump
{
	vspeed_-=10;
}
 #endregion


#region Tiro
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
		speed = 10;
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
if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sPlayerInitialJump;
	if (sign(vspeed_) >0.5) sprite_index = sPlayerFall; else sprite_index = sPlayerInitialJump;
}
else	
{
	if(hspeed_ !=0)
	{
		sprite_index = sPlayerRunning;
	}
}
if hspeed_=0
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