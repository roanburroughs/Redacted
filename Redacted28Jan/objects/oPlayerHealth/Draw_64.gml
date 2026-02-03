var healthbarheight=50// just lets me tweak it easier
///*
var multiplier =3
draw_set_alpha(1)
draw_set_colour(c_black)
draw_set_colour(c_white)
var outlinethickness =5
draw_rectangle(x-outlinethickness, y-outlinethickness,	x+sprite_width/1.5+oPlayer.hp*multiplier+outlinethickness,	y+ healthbarheight+outlinethickness,	false)

draw_set_colour(c_lime)

draw_rectangle(x, y,	x+sprite_width/1.5+oPlayer.hp*multiplier,	y+ healthbarheight,	false)

draw_set_colour(c_white)//reset
draw_self()//dont forget*/
