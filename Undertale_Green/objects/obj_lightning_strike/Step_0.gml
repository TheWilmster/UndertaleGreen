image_alpha -= 0.1;
if (image_alpha <= 0)
	instance_destroy();
randomize();
siner += random_range(1, 4);
x = def_x + (3 * cos(siner));
y = def_y + (3 * sin(siner));
