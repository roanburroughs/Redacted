draw_set_font(FnDialogue);
draw_text(100, 50, string(screenPos+1) + "/" + "3");

if(screenPos == 0)
{
	draw_sprite(sCredits, 0, 0, 0);
}
if(screenPos == 1)
{
	draw_sprite(sCreditsAudio, 0, 0, 0);
}
if(screenPos == 2)
{
	draw_sprite(sCreditsMusic, 0, 0, 0);
}