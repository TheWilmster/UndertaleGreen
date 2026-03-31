x_spd = (obj_heart.x - x) / 14;
deltay = abs(obj_heart.y - y);
grav = random_range(0.6, 0.8);
vf_sqrd = random_range(-1, 1);
y_spd = vf_sqrd - sqrt(2 * grav * deltay);
