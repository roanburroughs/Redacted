function DroneDie(){	
	if(audio_is_playing(soundChase))
	{
		audio_stop_sound(soundChase);
	}
	
with instance_create_layer(x, y, "Effects", droneExplode)
{
paintedcolour=other.paintedcolour	
	
}
ScreenShake(6, 30);
instance_destroy();
}