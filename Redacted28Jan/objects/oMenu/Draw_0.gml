draw_set_halign(fa_center);
draw_set_color(c_white);

draw_text_transformed(halfwidth, 250, "Master", 2, 2, 0);
draw_text_transformed(halfwidth, 370, "Music", 2, 2, 0);
draw_text_transformed(halfwidth, 490, "SFX", 2, 2, 0);

draw_line_width(halfwidth - 150, 320, halfwidth + 150, 320, 2);
draw_line_width(halfwidth - 150, 440, halfwidth + 150, 440, 2);
draw_line_width(halfwidth - 150, 560, halfwidth + 150, 560, 2);

draw_sprite(sSlider, 0, halfwidth - 150 + (300 * mastervol), 320);
draw_sprite(sSlider, 0, halfwidth - 150 + (300 * musicvol), 440);
draw_sprite(sSlider, 0, halfwidth - 150 + (300 * sfxvol), 560);

switch(pos)
{
		case 0:
				draw_set_valign(fa_middle);
				draw_text_transformed(halfwidth - 180, 320, ">", 2, 2, 0);
				
				if (keyRight) && (mastervol < 1) mastervol += 0.01;
				if (keyLeft) && (mastervol > 0) mastervol -= 0.01;
			break;
			
		case 1:
				draw_set_valign(fa_middle);
				draw_text_transformed(halfwidth - 180, 440, ">", 2, 2, 0);
				
				if (keyRight) && (musicvol < 1) musicvol += 0.01;
				if (keyLeft) && (musicvol > 0) musicvol -= 0.01;
			break;
			
		case 2:
				draw_set_valign(fa_middle);
				draw_text_transformed(halfwidth - 180, 560, ">", 2, 2, 0);
				
				if (keyRight) && (sfxvol < 1) sfxvol += 0.01;
				if (keyLeft) && (sfxvol > 0) sfxvol -= 0.01;
			break;
}