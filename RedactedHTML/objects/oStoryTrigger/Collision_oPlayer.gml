if(instance_exists(oTextBoxController)) exit
with(instance_create_depth(96,736,-1000,oTextBoxController ))
{
//text_file_path=other.text_file_path

	
}
other.hsp=0

if(startingplayersprite!=noone) other.sprite_index=startingplayersprite
if(instance_exists(oEnemyBoss))
{
	with(oCamera)
	{
		bossScene = true;
	}
	if(audio_is_playing(Level2))
	{
		audio_stop_sound(Level2);
	}
}
//instance_destroy()