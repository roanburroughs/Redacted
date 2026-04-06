event_inherited()
image_xscale=0.7
if(!instance_exists(oSpray2))
{
instance_destroy()	
}
if(instance_exists(oSpray1))paintcolour=oSpray1.paintcolour
else paintcolour=choose(c_red,c_aqua,c_green,c_purple,c_orange,c_yellow)