depth = -99999;
randomize();
damage = 4;
if (obj_sword_down.fly_type == 1)
	vspeed = random_range(-3, -6.5);
if (obj_sword_down.fly_type == 2)
	vspeed = random_range(-6.5, -9);
if (obj_sword_down.fly_type == 3)
	vspeed = random_range(-9, -12.5);
if (x > 320)
	hspeed = random_range(0.5, 3.2);
else
	hspeed = random_range(-3.2, -0.5);
