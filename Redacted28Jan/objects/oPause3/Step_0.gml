if(global.gamePaused)
{
	if(!instance_exists(oAudioButton))
	{
		audioButton = instance_create_depth(view_wport/2, view_hport/1.5, -1000, oAudioButton);
	}
}