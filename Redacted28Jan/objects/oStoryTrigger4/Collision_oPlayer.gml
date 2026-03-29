if(other.keyUp)
{
	global.mainMenu = false;
	global.info = true;
	global.gamePaused = true;
	other.hsp=0

	other.keyUp=false
	//instance_destroy()
}