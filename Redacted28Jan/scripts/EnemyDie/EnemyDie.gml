function EnemyDie(){
	if(audio_is_playing(soundChase))
	{
		audio_stop_sound(soundChase)
	}
	if(audio_is_playing(Level2Boss))
	{
		audio_stop_sound(Level2Boss);
	}
	//instance_create_layer(x, y-120, "Instances", oPlayerHealthPickup);
	instance_create_layer(x, y-sprite_height/2, "Instances", oPlayerHealthPickup);
	
	///Death Animation
instance_destroy();
}