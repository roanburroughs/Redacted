draw_set_color(c_white);
draw_set_font(-1);
draw_set_halign(fa_left);
/*
draw_text_transformed(halfwidth + 250, 320, string(round(mastervol * 100)), 2, 2, 0);
draw_text_transformed(halfwidth + 250, 440, string(round(musicvol * 100)), 2, 2, 0);
draw_text_transformed(halfwidth + 250, 560, string(round(sfxvol * 100)), 2, 2, 0);
*/
draw_text_transformed(halfwidth + 250, height+320, string(round(mastervol * 100)), 2, 2, 0);
draw_text_transformed(halfwidth + 250, height+440, string(round(musicvol * 100)), 2, 2, 0);
draw_text_transformed(halfwidth + 250, height+560, string(round(sfxvol * 100)), 2, 2, 0);

draw_set_halign(fa_center);
/*
draw_text_transformed(halfwidth, 250, "Master", 2, 2, 0);
draw_text_transformed(halfwidth, 370, "Music", 2, 2, 0);
draw_text_transformed(halfwidth, 490, "SFX", 2, 2, 0);
*/

draw_text_transformed(halfwidth, height+250, "Master", 2, 2, 0);
draw_text_transformed(halfwidth, height+370, "Music", 2, 2, 0);
draw_text_transformed(halfwidth, height+490, "SFX", 2, 2, 0);

switch(pos)
{
		case 0:
				draw_set_valign(fa_middle);
				//draw_text_transformed(halfwidth - 230, 320, ">", 2, 2, 0);
				draw_text_transformed(halfwidth - 230, height+320, ">", 2, 2, 0);
				
				if (keyRight) && (mastervol < 1) master.x += 1;
				if (keyLeft) && (mastervol > 0) master.x -= 1;
			break;
			
		case 1:
				draw_set_valign(fa_middle);
				//draw_text_transformed(halfwidth - 230, 440, ">", 2, 2, 0);
				draw_text_transformed(halfwidth - 230, height+440, ">", 2, 2, 0);
				
				if (keyRight) && (musicvol < 1) music.x += 1;
				if (keyLeft) && (musicvol > 0) music.x -= 1;
			break;
			
		case 2:
				draw_set_valign(fa_middle);
				//draw_text_transformed(halfwidth - 230, 560, ">", 2, 2, 0);
				draw_text_transformed(halfwidth - 230, height+560, ">", 2, 2, 0);
				
				if (keyRight) && (sfxvol < 1) sfx.x += 1;
				if (keyLeft) && (sfxvol > 0) sfx.x -= 1;
			break;
}

