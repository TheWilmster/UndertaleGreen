if (instance_exists(obj_queen) && instance_exists(obj_pawn))
{
	distancebetween = abs(obj_pawn.x - obj_queen.x);
	if (obj_queen.second_hit != 2)
	{
		if (distancebetween >= 100)
		{
			hit_1_damage = 0;
			display = obj_miss2;
		}
		if (distancebetween < 100)
		{
			hit_1_damage = 1;
			display = obj_okay;
		}
		if (distancebetween < 70)
		{
			hit_1_damage = 2;
			display = obj_good;
		}
		if (distancebetween < 36)
		{
			hit_1_damage = 3;
			display = obj_great;
		}
		if (distancebetween < 17)
		{
			hit_1_damage = 4;
			display = obj_excellent;
		}
	}
}
else
{
	distancebetween = 0;
}
