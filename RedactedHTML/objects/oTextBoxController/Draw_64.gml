
draw_self()
draw_set_alpha(1)
draw_set_font(font_name);
draw_set_color(c_white);
draw_text(x+350, y+125, current_display_text);
draw_set_alpha(buttonprompt);
draw_set_color(c_blue);
draw_text(x+700, y+280, "Press Space to continue")
//draw_line_colour(x+670, y+290, x+1080, y+290, c_blue, c_blue);
draw_line_width_colour(x+670, y+310, x+1095, y+310, 2, c_blue, c_blue)
draw_set_alpha(1);
