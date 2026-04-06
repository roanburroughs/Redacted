event_inherited()
if(!instance_exists(oSpray6) )
{
	instance_create_layer(x+64,y,"Spray",oSpray6)
}
if(!instance_exists(oSpray4))
{
instance_destroy()	
}
else{

x=oSpray4.xprevious

y=oSpray4.yprevious
}