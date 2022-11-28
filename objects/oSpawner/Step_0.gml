/// @description Spawn Enemies

if !instance_exists(oEnemyFly)
{
	repeat(wave_)
	{
		instance_create_layer(random_range(0, room_width), random_range(0, 0), "Instances", oEnemyFly);
		audio_play_sound(aSpawn, 4, false);
	}
	wave_ += 1;
}