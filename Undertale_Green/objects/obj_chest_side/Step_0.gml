if (fadein == true)
{
	image_alpha += 0.2;
	if (image_alpha >= 1)
		fadein = false;
}
if (fadeout == true)
{
	image_alpha -= 0.2;
	if (image_alpha <= 0)
		instance_destroy(self);
}
if (y < shakey)
	gravity = 0.5;
else
	gravity = 0;
