if (hair_frame == 6)
	hair_frame = 2;
if (hair_anim == 1)
	hair_frame += 0.25;
if (opacity_change == 1)
{
	global.half_op -= 0.1;
	if (global.half_op == 0.5)
		opacity_change = 0;
}
if (opacity_change2 == 1)
{
	global.half_op += 0.1;
	if (global.half_op == 1)
		opacity_change2 = 0;
}
