/// @Description Move towards the Player
var dir = point_direction(x, y, oPlayer.x, oPlayer.y);
hspeed_ = lengthdir_x(speed_, dir);
vspeed_ = lengthdir_y(speed_, dir);
scrMove();
