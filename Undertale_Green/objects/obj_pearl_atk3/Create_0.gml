image_alpha = 0;
fadein = true;
image_speed = 0;
alarm[0] = 10;
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
cont_x = obj_pearl_control_3.x;
cont_y = obj_pearl_control_3.y;
x = obj_pearl_control_3.x + (obj_pearl_control_3.r * cos(angle));
y = obj_pearl_control_3.y - (obj_pearl_control_3.r * sin(angle));
