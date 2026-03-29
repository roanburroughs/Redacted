var _x = 25;
var _y = 150;
if(graffitiCounter == activeGraffiti)
{
	//draw_set_colour(c_green);
}
else
{
	draw_set_colour(c_white);
}
draw_set_font(FnDialogue);
if(room!=level1_2Cutscene_Video)
{
	draw_text(_x, _y, "graffiti: " + string(graffitiCounter) + "/" + string(activeGraffiti));
}