function scr_battler(arg0)
{
	switch (arg0)
	{
		case "eden":
			global.battle_gray = false;
			global.battle_eden = true;
			global.battle_chai = false;
			break;
		case "gray":
			audio_sound_gain(mus_art_center, 1, 0);
			global.battle_eden = false;
			global.battle_gray = true;
			global.cutscene_battle_start = true;
			global.battle_chai = false;
			global.has_battled_gray = true;
			break;
		case "chai":
			global.bench_cut = 0;
			global.battle_eden = false;
			global.battle_chai = true;
			global.battle_gray = false;
			global.cutscene_battle_start = true;
			global.chai_entered = true;
			break;
	}
}
