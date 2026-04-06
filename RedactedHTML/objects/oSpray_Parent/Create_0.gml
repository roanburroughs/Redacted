image_xscale=0.5
image_yscale=0.5

sprayangle=0
anglespeed=0.1 //this is for lerps, 0 does nothing, 1 is instant changes
paintcolour=c_red
with(oPlayer)
{
	//if on ground
if(face=1)other.sprayangle=0 //facing right
if(face=-1)other.sprayangle=180 //facing left
//if rising
if(vsp<-1) 
{
	if(face=1)other.sprayangle=315 //facing right
else if(face=-1)other.sprayangle=225 //facing left
else other.sprayangle=270	
}
//if falling
if(vsp>1) {
	
if(face=1)other.sprayangle=45 //facing right
else if(face=-1)other.sprayangle=135 //facing left
else other.sprayangle=90	
}
}

image_angle=sprayangle


image_alpha=0