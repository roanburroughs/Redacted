if(paused)
{

draw_set_alpha(1)
 
if(surface_exists(pausesurface) )
{
	draw_surface(pausesurface, 0, 0) 
	draw_set_alpha(0.5)// this makes it so the black rectangle that is about to be drawn dims the screen
	//BUT if you tab out of the game and tab back in, gamemaker forgets pausesurface meaning that the sprites disappear
	// so the draw set alpha 0.5 is here to make it only dim the screen if it still has a pausesurface
	//if it doesnt have it (cause you tabbed out) it only listens to the one on line 4. making a hard black background
}
	draw_set_alpha(0.5) //comment this back in to see what i mean on line 10

draw_set_colour(c_black) 
draw_rectangle(0,0,view_wport,view_hport,false) //this could be an image later

draw_set_alpha(1)
draw_set_halign(fa_center)
draw_set_font(FnMarker)
draw_set_colour(c_white)
draw_text(view_wport/2,view_hport/2,"PAUSED")

draw_set_halign(fa_left) //reset text alignment for other objects

}
