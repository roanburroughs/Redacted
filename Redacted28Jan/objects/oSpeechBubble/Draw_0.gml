if(!hidden)
{
	box = draw_rectangle(oPlayer.x+boxXStart, oPlayer.y-200, oPlayer.x+boxXScale, oPlayer.y-boxYScale, false);
	point = draw_sprite(sSpeechBubblePoint, 0, oPlayer.x+100, oPlayer.y-boxYScale);
	draw_set_colour(c_black);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	text = draw_text_ext(oPlayer.x+60, oPlayer.y-boxYScale-50, dialogue, 20, 200);
	//text = draw_text_transformed(250, 425, dialogue, 1.5, 1.5, 0);
}