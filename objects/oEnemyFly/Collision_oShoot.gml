/// @description Take Damage

health_ -= 1;
instance_destroy(other);
state_ = HIT_;

var dir = other.direction;
hspeedPush_ = lengthdir_x(8, dir);
vspeedPush_ = lengthdir_y(8, dir);

