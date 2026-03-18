if(!global.gamePaused)
{
	if(roomReady && roomFinished)
	{
		if(!standActivate)
		{
			if(moveStart)
			{
	
				vsp = (moveSpeed/timeToMove)*sign(finalYPos);
				if(oPlayer.x < x+960 && oPlayer.x > x-960) && (oPlayer.y < y+540 && oPlayer.y > y-540)
				{
					if(!audio_is_playing(ElevatorMove))
					{
						audio_play_sound(ElevatorMove, 1, false, 0.3, 0, 1);
					}
				}
		
				if(sign(finalYPos) == 1)
				{
			
					if(y >= finalY)
					{
						audio_stop_sound(ElevatorMove);
						moveStart = false;
						standActivate = false;
						vsp = 0;
						time_source_start(timerEnd);
					}
				}
	
				if(sign(finalYPos) == -1)
				{
					if(y <= finalY)
					{
						audio_stop_sound(ElevatorMove);
						moveStart = false;
						vsp = 0;
						time_source_start(timerEnd);
					}
				}
			}

			if(moveEnd)
			{
				vsp = -((moveSpeed/timeToMove)*sign(finalYPos));
				if(oPlayer.x < x+960 && oPlayer.x > x-960) && (oPlayer.y < y+540 && oPlayer.y > y-540)
				{
					if(!audio_is_playing(ElevatorMove))
					{
						audio_play_sound(ElevatorMove, 1, false, 0.3, 0, random_range(0.9, 1));
					}
				}
				//if(!audio_is_playing(ElevatorMove))	audio_play_sound(ElevatorMove,0,true,1)
				/*if(y <= finalY-(finalYPos*2))
				{
					moveEnd = false;
					vsp = 0;
				}*/
	
				if(sign(finalYPos) == 1)
				{
					if(y <= ystart)
					{
						audio_stop_sound(ElevatorMove);
						moveEnd = false;
						vsp = 0;
						time_source_start(timerStart);
					}
				}
	
				if(sign(finalYPos) == -1)
				{
					if(y >= ystart)
					{
						audio_stop_sound(ElevatorMove);
						moveEnd = false;
						vsp = 0;
						time_source_start(timerStart);
					}
				}
			}
			var _distFrom = ((oPlayer.x) - (x))
			//if(audio_is_playing(ElevatorMove) && _distFrom > 600)
			//{
				//audio_stop_sound(ElevatorMove);
			//}
		}
	}
		x += hsp;
		y += vsp;
}