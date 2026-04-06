event_inherited()
if(!instance_exists(oSpray5) )
{
	instance_create_layer(x+64,y,"Spray",oSpray5)
}
if(!instance_exists(oSpray3))
{
instance_destroy()	
}
else{

x=oSpray3.xprevious

y=oSpray3.yprevious
}