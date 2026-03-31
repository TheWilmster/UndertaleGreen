function scr_battleface(arg0, arg1)
{
	switch (arg0)
	{
		case "eden":
			if (arg1 == "normal")
				obj_enemy_eden.battle_image = spr_enemy_eden_head;
			if (arg1 == "joyous")
				obj_enemy_eden.battle_image = spr_enemy_eden_headjoyous;
			if (arg1 == "sly")
				obj_enemy_eden.battle_image = spr_enemy_eden_headsly;
			if (arg1 == "tweakin")
				obj_enemy_eden.battle_image = spr_enemy_eden_headtweakin;
			if (arg1 == "straight")
				obj_enemy_eden.battle_image = spr_enemy_eden_headstraight;
			if (arg1 == "sad")
				obj_enemy_eden.battle_image = spr_enemy_eden_headsad;
			if (arg1 == "hurt")
				obj_enemy_eden.battle_image = spr_enemy_eden_headhurt;
			break;
		case "gray":
			if (arg1 == "normal")
				obj_enemy_gray.battle_image = spr_enemy_gray_head;
			if (arg1 == "smug")
				obj_enemy_gray.battle_image = spr_enemy_gray_headsmug;
			if (arg1 == "summin")
				obj_enemy_gray.battle_image = spr_enemy_gray_headsummin;
			if (arg1 == "surprised")
				obj_enemy_gray.battle_image = spr_enemy_gray_headsurprised;
			if (arg1 == "down")
				obj_enemy_gray.battle_image = spr_enemy_gray_headdown;
			if (arg1 == "consider")
				obj_enemy_gray.battle_image = spr_enemy_gray_headconsider;
			break;
		case "chai":
			if (arg1 == "normal")
				obj_enemy_chai.battle_image = spr_enemy_chai_head_stare;
			if (arg1 == "concerned")
				obj_enemy_chai.battle_image = spr_enemy_chai_head_down_neutral;
			if (arg1 == "smile")
				obj_enemy_chai.battle_image = spr_enemy_chai_head_smile;
			if (arg1 == "unsure")
				obj_enemy_chai.battle_image = spr_enemy_chai_head_unsure;
			break;
	}
}
