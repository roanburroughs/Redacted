timer+=0.3;
x += cos(timer * hoverspeedX)*hoverlengthX;
y += sin(timer * hoverspeedY)*hoverlengthY;

if(textAppear)
{
	textTimer++;
	textAlpha += sin(textTimer * textFadeSpeed)*textHoverSpeed;
}
else
{
	time_source_start(fade);
}