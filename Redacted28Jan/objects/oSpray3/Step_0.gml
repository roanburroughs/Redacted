event_inherited()
if(!instance_exists(oSpray4) )
{
	instance_create_layer(x+64,y,"Spray",oSpray4)
}
if(!instance_exists(oSpray2))
{
instance_destroy()	
}
else{

x=oSpray2.xprevious

y=oSpray2.yprevious
}