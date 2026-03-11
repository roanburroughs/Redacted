if(global.gamePaused)
{

	if((mouse_x < x+sprite_width/2) && (mouse_x > x-sprite_width/2) && (mouse_y < y+sprite_height/2) && (mouse_y > y-sprite_height/2))
	{

	}

}
if(point_in_rectangle(mouse_x, mouse_y, oAudioButton.bbox_left, oAudioButton.bbox_top, oAudioButton.bbox_right, oAudioButton.bbox_bottom))
{
	var chuck = true;
	show_debug_message(chuck);
}