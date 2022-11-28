/// @description Attack State
if instance_exists(oPlayer)
{
	#region Attack
	if distance_to_object(oPlayer) >= 48
	{
		state_ = MOVEMENT_;
	}
	#endregion

	// Create a Bullet
	if alarm[0] <= 0
	{
		sprite_index = sEnemyFlyAttack;
		var dir = point_direction(x, y, oPlayer.x, oPlayer.y-oPlayer.sprite_height/2);
		var x_offset = lengthdir_x(20, dir);
		var y_offset = lengthdir_y(20, dir);
	
		var bullet = instance_create_layer(x+x_offset, y+y_offset, "Shoot", oEnemyShoot);
		bullet.direction = dir;
		bullet.image_angle = dir;
		alarm[0] = bulletCooldown_;
	}
}