damage = 4;
depth = -9998;
fade_out = 0;
fade_in = 1;
has_hit_ground = 0;
image_alpha = 0;
randomize();
vspeed = -5;
if (x > 320)
	hspeed = random_range(-4.5, -0.5);
if (x < 320)
	hspeed = random_range(0.5, 4.5);
