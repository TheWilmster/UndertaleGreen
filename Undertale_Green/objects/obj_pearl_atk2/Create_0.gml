image_alpha = 0;
fadein = true;
image_speed = 0;
alarm[0] = 35;
left = false;
right = false;
fromleft = false;
fromright = false;
if (x < 320)
	left = true;
if (x > 320)
	right = true;
damage = 3;
shoot = false;
shoot_bounce = false;
has_bounced = true;
cont_x = obj_pearl_control_2.x;
cont_y = obj_pearl_control_2.y;
x = obj_pearl_control_2.x + (obj_pearl_control_2.r * cos(angle));
y = obj_pearl_control_2.y - (obj_pearl_control_2.r * sin(angle));
