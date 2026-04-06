if(instance_exists(oEnemyBoss))
{
	if(oEnemyBoss.fight = true)
	{
		if(!audio_is_playing(Level2Boss))
		{
			audio_play_sound(Level2Boss, 5, true, 0.7);
		}
	}
}