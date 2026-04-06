if(global.gamePaused)
{

		//draw_set_alpha(1)
 
		/*if(surface_exists(pausesurface) )
		{
			draw_surface(pausesurface, 0, 0) 
			draw_set_alpha(0.5)// this makes it so the black rectangle that is about to be drawn dims the screen
			//BUT if you tab out of the game and tab back in, gamemaker forgets pausesurface meaning that the sprites disappear
			// so the draw set alpha 0.5 is here to make it only dim the screen if it still has a pausesurface
			//if it doesnt have it (cause you tabbed out) it only listens to the one on line 4. making a hard black background
		}*/
			draw_set_alpha(0.5) //comment this back in to see what i mean on line 10

		draw_set_colour(c_black)
		draw_rectangle(0,0,view_wport,view_hport,false) //this could be an image later
		
		if(global.mainMenu)
		{
		draw_set_alpha(1)
		draw_set_halign(fa_center)
		draw_set_font(FnMarker)
		draw_set_colour(c_white)
		draw_text(view_wport/2,view_hport/4,"PAUSED")
		}
		
		if(global.tutorial)
		{
			draw_set_alpha(1);
			draw_rectangle(view_wport/5, 100, view_wport/1.25, 860, false);
			draw_set_colour(c_white);
			draw_rectangle(view_wport/5, 100, view_wport/1.25, 860, true);
			draw_set_colour(c_black);
			draw_set_halign(fa_center);
			draw_set_font(FnButtonText);
			draw_set_colour(c_white);
			//draw_text(view_wport/2, view_hport/1.75, tutorialTrigger.tutorialText);
			draw_text_ext(view_wport/2, view_hport/2, oTutorialTrigger.tutorialText, 50, 900)
			draw_set_alpha(alpha);
			draw_set_font(FnDialogue);
			draw_set_colour(c_blue);
			draw_text(view_wport/2, view_hport/1.35, "Press Space to continue");
			draw_line_width_colour(view_wport-1160, view_hport/1.3, view_wport-760, view_hport/1.3, 2, c_blue, c_blue)
			draw_set_colour(c_white);
			draw_set_alpha(1);
			if(oTutorialTrigger.tutorialSprite = builetten_board)
			{
				draw_sprite(oTutorialTrigger.tutorialSprite, 0, view_wport/2-200, view_hport/6);
			}
			if(oTutorialTrigger.tutorialSprite = sGraffitiFrame2)
			{
				draw_sprite(oTutorialTrigger.tutorialSprite, 0, view_wport/2-40, view_hport/6);
			}
			if(oTutorialTrigger.tutorialSprite = sPaintcan)
			{
				draw_sprite(oTutorialTrigger.tutorialSprite, 0, view_wport/2, view_hport/3);
			}
		}
		
		if(global.info)
		{
			draw_set_alpha(1);
			draw_rectangle(view_wport/5, 100, view_wport/1.25, 860, false);
			draw_set_colour(c_white);
			draw_rectangle(view_wport/5, 100, view_wport/1.25, 860, true);
			draw_set_colour(c_black);
			draw_set_halign(fa_center);
			draw_set_font(FnButtonText);
			draw_set_colour(c_white);
			//draw_text(view_wport/2, view_hport/1.75, tutorialTrigger.tutorialText);
			//draw_text_ext(view_wport/2, view_hport/2, tutorialTrigger.tutorialText, 50, 900)
			draw_set_alpha(alpha);
			draw_set_font(FnDialogue);
			draw_set_colour(c_blue);
			draw_text(view_wport/2, view_hport/1.35, "Press Space to continue");
			draw_line_width_colour(view_wport-1160, view_hport/1.3, view_wport-760, view_hport/1.3, 2, c_blue, c_blue)
			draw_set_colour(c_white);
			draw_set_alpha(1);
			draw_sprite(sNewspaperArticle_2_2, 0, view_wport/2-450, view_hport/7);
		}

		draw_set_halign(fa_left) //reset text alignment for other objects
	
}