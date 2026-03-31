if (move_up == true)
	vspeed = -3;
if (y <= 281 && move_up == true)
{
	move_up = false;
	vspeed = 0;
	alarm_set(1, 30);
}
if (shaking == true)
{
	if (x > 320)
		hspeed = -2;
	if (x < 320)
		hspeed = 2;
}
if (pull_up == true)
{
	vspeed += 1;
	if (vspeed >= 0)
		pull_up = false;
}
