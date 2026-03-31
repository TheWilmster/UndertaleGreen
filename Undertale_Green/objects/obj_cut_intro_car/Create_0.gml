global.intro_cut_parkinglot = true;
global.fade_in = false;
global.fade_out = false;
global.beat1 = false;
fade_screen = false;
fade_screen_out = false;
alarm_set(0, 80);
instance_create_depth(0, 0, 0, obj_timer);
