randomize();
alarm_set(0, 80);
fade = 0;
damage = 3;
depth = -10000;
image_speed = 0;
image_index = choose(0, 1, 2);
if (obj_lute.x == 565)
	move_towards_point(150, global.y_note, 5);
if (obj_lute.x == 75)
	move_towards_point(490, global.y_note, 5);
