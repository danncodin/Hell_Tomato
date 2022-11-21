#region Controles
key_right=keyboard_check(vk_right) //RIGHT D
key_left=keyboard_check(vk_left) //LEFT A
key_jump=keyboard_check(ord("Z")) //JUMP SPACE
key_shoot=keyboard_check_pressed(ord("X")) // SHOOT
#endregion
#region  Movimentacao
var move= key_right - key_left

hspd = move * spd;

vspd = vspd + grv;

if (hspd !=0) image_xscale = sign(hspd);

//COLISÃO HORIZONTAL 
if place_meeting(x+hspd,y,oWall)
{
	while(!place_meeting(x+sign(hspd),y,oWall))
	{
		x=x+sign(hspd);
	}
hspd=0;
}
x=x+hspd;

//COLISÃO VERTICAL
if place_meeting(x,y+vspd,oWall)
{
	while(!place_meeting(x,y+sign(vspd),oWall))
	{
		y=y+sign(vspd);
	}
vspd=0;
}
y=y+vspd;

//JUMP
if place_meeting(x,y+1,oWall) and key_jump
{
	vspd-=10;
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
		speed = 20;
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