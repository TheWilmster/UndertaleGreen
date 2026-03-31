instance_destroy(obj_cut1_trigger);
audio_sound_gain(mus_art_center, 0, 2000);
obj_player.curr_state = PlayerState.INTERACT;
global.cutscene_gray_eden_triggered = true;
global.cut1mvt1 = true;
global.gray_leave_lobby = true;
global.save_photo = 11;
