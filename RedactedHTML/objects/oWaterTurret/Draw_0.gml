
// Inherit the parent event
event_inherited();

image_blend = c_white;
if (vulnerable == true)
{
	image_blend = paintedcolour;
}
else{

draw_set_colour(c_red)
draw_set_alpha(0.2);
draw_circle(x,y,fireradius,false)
}