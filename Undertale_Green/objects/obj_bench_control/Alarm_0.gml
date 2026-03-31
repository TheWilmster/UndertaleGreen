randomize();
if (ff_area == 1)
{
	ff_x = random_range(60, 105);
	ff_y = random_range(115, 180);
}
if (ff_area == 2)
{
	ff_x = random_range(195, 240);
	ff_y = random_range(115, 180);
}
if (ff_area == 3 || ff_area == 4)
{
	ff_x = random_range(60, 240);
	ff_y = random_range(180, 230);
}
instance_create_depth(ff_x, ff_y, -2999, obj_firefly);
ff_area += 1;
if (ff_area == 5)
	ff_area = 1;
alarm[0] = random_range(5, 20);
