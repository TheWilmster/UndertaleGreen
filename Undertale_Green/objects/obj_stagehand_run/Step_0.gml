randomize();
siner_amp = random_range(0.1, 0.4);
siner += siner_amp;
y = def_y + (10 * siner_amp * sin(5 * siner));
if (x >= 1074)
	instance_destroy();
obj_player.curr_state = PlayerState.CUTSCENE;
if (instance_exists(obj_textboxNEW))
	obj_textboxNEW.txt_y = -312;
