
function PlayerStateIdle(){
	if xspd == 0 && vsp == 0
	{
		mask_index = sPlayerIdle;
		image_index = sPlayerIdle;
	}
	
	if keyRight || keyLeft
	{
		state = PLAYERSTATE.FREE;
	}
}