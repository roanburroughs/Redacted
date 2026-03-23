with(other)
{
	if(hp!=hpFull)
	{
		hp+=5;
	}
}
audio_play_sound(soHealthPickup, 1, false, 1);
instance_destroy();