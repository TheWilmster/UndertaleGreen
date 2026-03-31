damage = 3;
randomize();
vspeed = random_range(-3, -6);
hspeed = random_range(-0.38, 0.38);
if (hspeed <= 0)
	hspeed -= random_range(0, 1.1);
if (hspeed >= 0)
	hspeed += random_range(0, 1.1);
