event_inherited()
if(!instance_exists(oSpray7) )
{
	instance_create_layer(x+64,y,"Spray",oSpray7)
}
if(!instance_exists(oSpray5))
{
instance_destroy()	
}
else{

x=oSpray5.xprevious

y=oSpray5.yprevious}