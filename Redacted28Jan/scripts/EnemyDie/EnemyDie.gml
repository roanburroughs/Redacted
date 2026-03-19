function EnemyDie(){
	if(audio_is_playing(soundChase))
	{
		audio_stop_sound(soundChase)
	}
	if(audio_is_playing(Level2Boss))
	{
		audio_stop_sound(Level2Boss);
	}
	///Death Animation
instance_destroy();
}