randomize();
image_speed = 0;
damage = 3;
depth = -100001;
rotation = random_range(-10, 10);
stopslowdown = false;
alarm[0] = 12;
if (image_index == 0)
{
	vspeed = -7;
	hspeed = -5;
}
if (image_index == 1)
{
	vspeed = -8.5;
	hspeed = -2;
}
if (image_index == 2)
{
	vspeed = -8.5;
	hspeed = 2;
}
if (image_index == 3)
{
	vspeed = -7;
	hspeed = 5;
}
if (image_index == 5)
{
	vspeed = -5;
	hspeed = -7;
}
if (image_index == 4)
{
	vspeed = -2;
	hspeed = -8.5;
}
if (image_index == 6)
{
	vspeed = 2;
	hspeed = -8.5;
}
if (image_index == 7)
{
	vspeed = 5;
	hspeed = -7;
}
if (image_index == 8)
{
	vspeed = -5;
	hspeed = 7;
}
if (image_index == 9)
{
	vspeed = -2;
	hspeed = 8.5;
}
if (image_index == 10)
{
	vspeed = 2;
	hspeed = 8.5;
}
if (image_index == 11)
{
	vspeed = 5;
	hspeed = 7;
}
if (image_index == 12)
{
	vspeed = 7;
	hspeed = -5;
}
if (image_index == 13)
{
	vspeed = 8.5;
	hspeed = -2;
}
if (image_index == 14)
{
	vspeed = 8.5;
	hspeed = 2;
}
if (image_index == 15)
{
	vspeed = 7;
	hspeed = 5;
}
magnitude = 8.65;
xrat = hspeed;
yrat = vspeed;
