if (helpme == 1 && obj_fight.freezeframe == false)
	vspeed += accel;
if (obj_fight.freezeframe == false)
	rotation += rotspeed;
if (global.piece_hit_number == 2 && second_hit == 0)
{
	helpme = 0;
	randomize();
	second_hit_dir = choose(0, 1);
	if (second_hit_dir == 0)
		vspeed = 8;
	if (second_hit_dir == 1)
		vspeed = -8;
	hspeed = -20;
	rotspeed = 0;
	second_hit = 1;
	x = 320;
	y = 320;
}
if (global.piece_hit_number == 2 && second_hit == 1)
{
	rotspeed += 0.22;
	if (obj_fight.freezeframe == false)
		hspeed += 1;
	if (second_hit_dir == 0 && obj_fight.freezeframe == false)
		vspeed -= 0.4;
	if (second_hit_dir == 1 && obj_fight.freezeframe == false)
		vspeed += 0.4;
}
if (second_hit == 2)
{
	rotation -= 10;
	vspeed += 1.5;
	if (instance_exists(obj_queen) && x <= obj_pawn.x)
		hspeed = -7;
	if (instance_exists(obj_queen) && x >= obj_pawn.x)
		hspeed = 7;
}
if (obj_fight.freezeframe == true)
{
	image_speed = 0.4;
}
else
{
	image_speed = 0;
	image_index = 0;
}
