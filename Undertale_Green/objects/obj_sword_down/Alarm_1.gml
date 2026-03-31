randomize();
alarm_len = random_range(30, 65);
if (shakes <= 0)
{
	shaking = true;
	hspeed = 1;
	alarm_set(3, 15);
}
if (shakes > 0)
{
	shaking = true;
	hspeed = 1;
	alarm_set(2, 15);
	alarm_set(1, alarm_len);
	shakes -= 1;
}
