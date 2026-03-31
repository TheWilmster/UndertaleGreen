target_x = global.bottom_right[0];
target_y = global.bottom_right[1];
if (x < target_x)
{
	if (x < (target_x - 15))
		x += 15;
	else
		x = target_x;
}
if (x > target_x)
{
	if (x > (target_x + 15))
		x -= 15;
	else
		x = target_x;
}
if (y > target_y)
{
	if (y > (target_y + 15))
		y -= 15;
	else
		y = target_y;
}
if (y < target_y)
{
	if (y < (target_y - 15))
		y += 15;
	else
		y = target_y;
}
image_xscale = -(obj_border_l.x - x);
