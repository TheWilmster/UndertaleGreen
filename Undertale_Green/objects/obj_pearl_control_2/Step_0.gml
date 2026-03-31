distx = (obj_heart.x + 5) - x;
disty = (obj_heart.y + 5) - y;
dist_to_player = distance_to_point(obj_heart.x + 5, obj_heart.y + 5);
if (x < 320)
{
	theta1 = -arcsin(disty / dist_to_player);
	theta1 -= 0.3490658503988659;
}
if (x > 320)
{
	theta1 = -arcsin(-disty / dist_to_player) + pi;
	theta1 -= 0.3490658503988659;
}
