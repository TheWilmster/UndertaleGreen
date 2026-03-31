randomize();
if (right == true)
	speed_x = random_range(-2.2, -2.8);
if (left == true)
	speed_x = random_range(2.2, 2.8);
speed_y = random_range(-(y - 375) / 183, -(y - 375) / 90) * abs(speed_x);
image_speed = 0;
shoot = true;
hspeed = speed_x;
vspeed = speed_y;
audio_play_sound(snd_bomb, 1, false);
obj_enemy_soldier.j_body_img = 2;
obj_enemy_soldier.shake = false;
obj_heart.shake = 4;
