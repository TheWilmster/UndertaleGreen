if (strum_rot == 1 && image_angle > -6)
	image_angle -= 3;
if (strum_rot == 1 && image_angle == -6)
{
	image_angle = 0;
	strum_rot = 0;
}
theta += 0.05235987755982988;
global.y_note = (30 * sin(theta)) + 325;
global.y_note2 = (30 * sin(theta)) + 425;
global.y_note3 = (30 * sin(theta)) + 225;
