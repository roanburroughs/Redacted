event_inherited()
if(!instance_exists(oSpray3))
{
	instance_create_layer(x+64,y,"Spray",oSpray3)
}
if(!instance_exists(oSpray1))
{
instance_destroy()	
}
else{

x=oSpray1.xprevious

y=oSpray1.yprevious
}