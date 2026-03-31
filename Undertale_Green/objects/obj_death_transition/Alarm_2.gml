if (global.battle_chai != true)
	start_play_music();
global.cutscene = 1;
global.flag_die = true;
global.has_battled = true;
instance_create_depth(0, 0, -99999999999, obj_transition);
