if(room = Hub1) || (room = Hub2) || (room = Hub3) || (room = Hub5)
{
	audio_play_sound(Hub, 100, true, 0.7);
}
else
{
	if(audio_is_playing(Hub))
	{
		audio_stop_sound(Hub);
	}
}

if(room = FinalLevel1)
{
	audio_play_sound(Level1, 100, true, 0.7);
}
else
{
	if(audio_is_playing(Level1))
	{
		audio_stop_sound(Level1);
	}
}

if(room = FinalLevel1_2)
{
	audio_play_sound(Level1_2, 100, true, 0.4);
}
else
{
	if(audio_is_playing(Level1_2))
	{
		audio_stop_sound(Level1_2);
	}
}

if(room = FinalLevel2)
{
	audio_play_sound(Level2, 100, true, 0.5);
}
else
{
	if(audio_is_playing(Level2))
	{
		audio_stop_sound(Level2);
	}
}

if(room = FinalLevel3)
{
	audio_play_sound(Level3, 100, true, 0.3);
}
else
{
	if(audio_is_playing(Level3))
	{
		audio_stop_sound(Level3);
	}
}

if(room = FinalLevel3_2)
{
	audio_play_sound(Level3_2, 100, true, 0.3);
}
else
{
	if(audio_is_playing(Level3_2))
	{
		audio_stop_sound(Level3_2);
	}
}

if(room = FinalLevel4)
{
	audio_play_sound(Level4, 100, true, 0.7);
}
else
{
	if(audio_is_playing(Level4))
	{
		audio_stop_sound(Level4);
	}
}