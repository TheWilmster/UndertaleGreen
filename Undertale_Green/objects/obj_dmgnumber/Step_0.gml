if (y > ystart)
{
	y = ystart;
	vspeed = 0;
	gravity = 0;
}
if (instance_exists(obj_fight))
	attack_no = obj_fight.attacked;
