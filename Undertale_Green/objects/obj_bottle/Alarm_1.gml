randomize();
if (drop_count <= 10)
{
	drop_count += 1;
	alarm_set(1, random_range(8 + drop_count, 13 + (2 * drop_count)));
	instance_create_depth(x - 19, y + 65, depth + 1, obj_droplet);
}
if (drop_count > 10)
{
	follow_player = 0;
	shake_bottle = 1;
	shake_number = choose(2, 3, 4);
}
