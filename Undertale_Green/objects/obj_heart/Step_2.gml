randomize();
var shake_x = irandom_range(shake, -shake);
var shake_y = irandom_range(shake, -shake);
camera_set_view_pos(view_camera[0], 0 + shake_x, 0 + shake_y);
