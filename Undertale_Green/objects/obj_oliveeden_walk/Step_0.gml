obj_player.visible = false;
obj_player.x = x;
obj_player.y = y;
if (shake == true)
{
	siner += 1;
	offset = 1 * sin(siner);
}
else
{
	offset = 0;
	siner = 0;
}
if (hall1 == true)
{
	alarm[4] = 40;
	alarm[5] = 130;
	hall1 = false;
}
if (hall2 == true)
{
	alarm[6] = 70;
	alarm[7] = 100;
	hall2 = false;
}
