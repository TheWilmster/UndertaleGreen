depth = -500;
image_alpha = 0;
pos_x = obj_axe_right.x - x;
tar_y = obj_axe_right.y - (obj_heart.y + 8);
tar_x = obj_axe_right.x - (obj_heart.x + 8);
y = (-(tar_y / tar_x) * pos_x) + obj_axe_right.y;
