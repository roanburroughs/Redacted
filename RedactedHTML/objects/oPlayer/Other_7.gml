
if(hsp!=0 and onGround and state = PlayerStateFree)
{
	if(room = FinalLevel3_2)
	{
		if(!audio_is_playing(soPlayerStepConcrete)	) audio_play_sound(soPlayerStepConcrete,2,false,random_range(0.75,1),0,random_range(0.75,1))
	}
	else
	{
		if(!audio_is_playing(soPlayerStep)	) audio_play_sound(soPlayerStep,2,false,random_range(0.75,1),0,random_range(0.75,1))
	}
}

