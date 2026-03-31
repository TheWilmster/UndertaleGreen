depth = -bbox_bottom;
progress = -1;
timer = -1;
image_speed = 0.04;
cut = false;
edenleaveschool = false;
image_blend = c_gray;
if (global.eden_spotlight_leave == true)
	instance_destroy();
audio_sound_gain(snd_eden_cry, 0.7, 0);
edenlight1 = false;
edenlight2 = false;
edenlight3 = false;
