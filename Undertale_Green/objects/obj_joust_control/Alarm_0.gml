spawnx = 0;
spawny = 0;
randomize();
if (dir == 5)
	dir = choose(0, 1, 2);
else if (dir == 0)
	dir = choose(1, 2, 3);
else if (dir == 1)
	dir = choose(0, 2, 3);
else if (dir == 2)
	dir = choose(0, 1, 3);
else if (dir == 3)
	dir = choose(0, 1, 2);
if (space == 260)
	space = choose(290, 320, 350, 380);
else if (space == 290)
	space = choose(260, 320, 350, 380);
else if (space == 320)
	space = choose(260, 290, 350, 380);
else if (space == 350)
	space = choose(260, 290, 320, 380);
else if (space == 380)
	space = choose(260, 290, 320, 350);
if (dir == 0)
	spawnx = 500;
if (dir == 1)
	spawny = 140;
if (dir == 2)
	spawnx = 140;
if (dir == 3)
	spawny = 500;
if (spawny != 0)
{
	instance_create_depth(260, spawny, -9999, obj_joust);
	instance_create_depth(290, spawny, -9999, obj_joust);
	instance_create_depth(320, spawny, -9999, obj_joust);
	instance_create_depth(350, spawny, -9999, obj_joust);
	instance_create_depth(380, spawny, -9999, obj_joust);
}
if (spawnx != 0)
{
	instance_create_depth(spawnx, 260, -9999, obj_joust);
	instance_create_depth(spawnx, 290, -9999, obj_joust);
	instance_create_depth(spawnx, 320, -9999, obj_joust);
	instance_create_depth(spawnx, 350, -9999, obj_joust);
	instance_create_depth(spawnx, 380, -9999, obj_joust);
}
alarm_set(0, 45);
