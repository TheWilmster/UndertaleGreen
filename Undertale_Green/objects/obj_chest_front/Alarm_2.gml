randomize();
if (gemspawn == true)
	alarm[2] = random_range(2, 3);
gem_spawn_x = prev_spawn_x + random_range(20, 28);
if (gem_spawn_x >= 60)
	gem_spawn_x -= 60;
if (gems_spawned == 0)
{
	instance_create_depth(330, 158, -5001, obj_gem_atk1, 
	{
		timetofall: -140
	});
}
else if (gems_spawned == 1)
{
	instance_create_depth(310 + random_range(2, 8), 158, -5001, obj_gem_atk1, 
	{
		timetofall: -100
	});
}
else if (gems_spawned == 2)
{
	instance_create_depth(320 + random_range(2, 8), 158, -5001, obj_gem_atk1, 
	{
		timetofall: -75
	});
}
else if (gems_spawned >= 3)
{
	instance_create_depth(290 + gem_spawn_x, 158, -5001, obj_gem_atk1, 
	{
		timetofall: 50
	});
}
prev_spawn_x = gem_spawn_x;
gems_spawned += 1;
