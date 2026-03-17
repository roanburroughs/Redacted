function EnemyDie(){
	if(audio_is_playing(soundChase))
	{
		audio_stop_sound(soundChase)
	}
	///Death Animation
instance_destroy();
}