hspeed += random_range(-0.1, 0.1);
vspeed += random_range(-0.1, 0.1);
if (fadein == true)
	image_alpha += 0.05;
if (image_alpha >= 1)
	fadein = false;
if (fadeout == true)
	image_alpha -= 0.05;
if (image_alpha == 0 && fadeout == true)
	instance_destroy();
