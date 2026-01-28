function PlayerStateIdle(){
	if xspd == 0 && yspd == 0
	{
		mask_index = sPlayerIdle;
		image_index = sPlayerIdle;
	}
	
	if keyRight || keyLeft
	{
		state = PLAYERSTATE.FREE;
	}
}