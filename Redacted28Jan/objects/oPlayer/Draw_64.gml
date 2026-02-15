// Set color so it's visible against your background
draw_set_color(c_white);

// Calculate position (20 pixels from the right edge, 20 from the top)
var _x = display_get_gui_width() - 100;
var _y = 20;

draw_text(_x, _y, "FPS: " + string(fps));