box = draw_rectangle(200, 400, 400, boxYscale, false);
point = draw_sprite(sSpeechBubblePoint, 0, 250, boxYscale);
draw_set_colour(c_black);
//text = draw_text_ext(250, 425, "chungus khan", 20, 10);
text = draw_text_transformed(250, 425, dialogue, 1.5, 1.5, 0);