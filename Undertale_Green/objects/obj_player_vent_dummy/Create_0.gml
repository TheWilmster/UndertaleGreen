depth = -bbox_bottom;
image_index = 0;
image_speed = 0;
up = keyboard_check(vk_up) || keyboard_check(ord("W"));
down = keyboard_check(vk_down) || keyboard_check(ord("S"));
left = keyboard_check(vk_left) || keyboard_check(ord("A"));
right = keyboard_check(vk_right) || keyboard_check(ord("D"));
randomize();
deathrot = random_range(-1, -3);
