with(other)

{
	if(!hurt)
	{
	alarm[2]=iframes
	hp-=10
		if(!audio_is_playing(Being_Hit_2)) audio_play_sound(Being_Hit_2,1,false,0.5) 
	hurt=true
	}
}
instance_destroy()