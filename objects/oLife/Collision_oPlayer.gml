if global.life < 5
{
	audio_play_sound(aCollectLife, 3, false);
	global.life += 1;
	instance_destroy();
}
