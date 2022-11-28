/// @description Initialize the enemy
speed_ = 1.5;
hspeed_ = 0;
vspeed_ = 0;
hspeedPush_ = 0;
vspeedPush_ = 0;
health_ = 1;

// Bullet cooldown
bulletCooldown_ = room_speed/2;
alarm[0] = bulletCooldown_;


// States
MOVEMENT_ = 0;
ATTACK_ = 1; 
HIT_ = 2;

state_ = MOVEMENT_;

