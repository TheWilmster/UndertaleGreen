distx = (obj_heart.x + 5) - x;
disty = (obj_heart.y + 5) - y;
dist_to_player = distance_to_point(obj_heart.x + 5, obj_heart.y + 5);
if (x < 320)
	player_theta = -arcsin(disty / dist_to_player);
if (x > 320)
{
	player_theta = -arcsin(-disty / dist_to_player) + pi;
	theta1 -= 0.7391982714328925;
}
