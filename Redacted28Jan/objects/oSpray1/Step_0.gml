event_inherited()

if(!instance_exists(oSpray2) and oPlayer.keySpray)
{
	instance_create_layer(x+64,y,"Spray",oSpray2)
}
if(!oPlayer.keySpray)
{
instance_destroy()	
}

x=oPlayer.xprevious

y=oPlayer.yprevious