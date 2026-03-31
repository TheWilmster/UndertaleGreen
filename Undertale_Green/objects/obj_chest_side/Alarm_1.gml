if (obj_enemy_chai.atk_choice == 3 || obj_enemy_chai.atk_choice == 2)
{
	if (x > 320)
	{
		instance_create_depth(x + 25, y + 25, -5001, obj_gem_atk2, 
		{
			vspeed: random_range(-4, -5),
			hspeed: random_range(-3, -4)
		});
		instance_create_depth(x + 40, y + 30, -5001, obj_gem_atk2, 
		{
			vspeed: random_range(-4, -5),
			hspeed: random_range(-2, -3)
		});
		instance_create_depth(x + 55, y + 35, -5001, obj_gem_atk2, 
		{
			vspeed: random_range(-4, -5),
			hspeed: random_range(-1.5, -2)
		});
	}
	if (x < 320)
	{
		instance_create_depth(x + 89, y + 25, -5001, obj_gem_atk2, 
		{
			vspeed: random_range(-4, -5),
			hspeed: random_range(3, 4)
		});
		instance_create_depth(x + 74, y + 30, -5001, obj_gem_atk2, 
		{
			vspeed: random_range(-4, -5),
			hspeed: random_range(2, 3)
		});
		instance_create_depth(x + 59, y + 35, -5001, obj_gem_atk2, 
		{
			vspeed: random_range(-4, -5),
			hspeed: random_range(1.5, 2)
		});
	}
}
if (obj_enemy_chai.atk_choice >= 6)
{
	if (x > 320)
	{
		instance_create_depth(x + 40, y + 10, -5001, obj_diamond, 
		{
			vspeed: random_range(-4, -5),
			hspeed: random_range(-1.5, -4)
		});
	}
	if (x < 320)
	{
		instance_create_depth(x + 74, y + 10, -5001, obj_diamond, 
		{
			vspeed: random_range(-4, -5),
			hspeed: random_range(1.5, 4)
		});
	}
}
