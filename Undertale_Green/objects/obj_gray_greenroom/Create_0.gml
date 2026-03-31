walktochai = false;
stormout = false;
runout = false;
if (global.school_time_sequence != 2)
	instance_destroy(self);
image_speed = 0;
progress = -1;
timer = -1;
depth = -bbox_bottom;
audio_play_sound(mus_gray_womp_womp, 1, true, 0);
