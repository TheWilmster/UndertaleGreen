function scr_character(arg0, arg1)
{
	switch (arg0)
	{
		case "none":
			face_image = -1;
			if (instance_exists(obj_textboxNEW))
				obj_textboxNEW.s.starting_format("fnt_determination", c_white);
			global.sound = snd_default_text;
			break;
		case "stage":
			face_image = -1;
			global.sound = snd_default_text;
			if (arg1 == "stagenpc")
				global.talking = obj_stage_npc;
			if (arg1 == "stagenpc2")
				global.talking = obj_stage_npc2;
			if (arg1 == "stagenpc3")
				obj_stage_npc2.sprite_index = spr_scientist_stage;
			if (arg1 == "director")
				global.talking = obj_director_auditorium;
			if (arg1 == "none")
				global.talking = obj_theater_control;
			break;
		case "chaimuffle1":
			face_image = -1;
			global.sound = snd_chai_muffle1;
			break;
		case "chaimuffle2":
			face_image = -1;
			global.sound = snd_chai_muffle2;
			break;
		case "uni":
			face_image = -1;
			global.sound = snd_eye;
			unifont = __scribble_font_add_sprite_ext(spr_Unifont, "ABCDEFGHIJKLMNOPQRSTUVWXYZ,.!?*'", true, 0);
			if (instance_exists(obj_textboxNEW))
				obj_textboxNEW.s.starting_format(font_get_name(unifont), c_white);
			break;
		case "linguet":
			if (instance_exists(obj_textboxNEW))
				obj_textboxNEW.s.starting_format("fnt_determination", c_white);
			face_image = -1;
			global.sound = snd_lang;
			break;
		case "dummy":
			if (arg1 == "normal")
				face_image = spr_dummy_1;
			if (arg1 == "side")
				face_image = spr_dummy_2;
			if (arg1 == "happy")
				face_image = spr_dummy_3;
			global.sound = snd_flowey;
			break;
		case "shopkeep":
			face_image = -1;
			global.sound = snd_wedge;
			if (arg1 == "normal")
				obj_shop.shopkeepface = spr_shopkeeper;
			if (arg1 == "confident")
				obj_shop.shopkeepface = spr_shopkeeper_confident;
			if (arg1 == "crafty")
				obj_shop.shopkeepface = spr_shopkeeper_crafty;
			if (arg1 == "excited")
				obj_shop.shopkeepface = spr_shopkeeper_excited;
			if (arg1 == "intimidated")
				obj_shop.shopkeepface = spr_shopkeeper_intimidated;
			if (arg1 == "nervous")
				obj_shop.shopkeepface = spr_shopkeeper_nervous;
			if (arg1 == "sad")
				obj_shop.shopkeepface = spr_shopkeeper_sad;
			if (arg1 == "sadsmile")
				obj_shop.shopkeepface = spr_shopkeeper_sadsmile;
			if (arg1 == "scared")
				obj_shop.shopkeepface = spr_shopkeeper_scared;
			if (arg1 == "summin")
				obj_shop.shopkeepface = spr_shopkeeper_summin;
			if (arg1 == "angry")
				obj_shop.shopkeepface = spr_shopkeeper_angry;
			break;
		case "wedge":
			face_image = -1;
			global.sound = snd_wedge;
			break;
		case "conc":
			face_image = -1;
			if (arg1 == "scared")
				obj_concentration.image_index = 1;
			break;
		case "wedge_muffle":
			face_image = -1;
			global.sound = snd_wedge_muffle;
			break;
		case "eden":
			if (room == rm_auditorium)
				global.talking = obj_theater_control;
			if (arg1 == "angry")
				face_image = spr_eden_angry;
			if (arg1 == "buggin")
				face_image = spr_eden_buggin;
			if (arg1 == "cluckin")
				face_image = spr_eden_cluckin;
			if (arg1 == "lockedin")
				face_image = spr_eden_lockedin;
			if (arg1 == "tweakin")
				face_image = spr_eden_tweakin;
			if (arg1 == "happy")
				face_image = spr_eden_happy;
			if (arg1 == "joyous")
				face_image = spr_eden_joyous;
			if (arg1 == "sad")
				face_image = spr_eden_sad;
			if (arg1 == "pshh")
				face_image = spr_eden_pshh;
			if (arg1 == "sly")
				face_image = spr_eden_sly;
			if (arg1 == "flustered")
				face_image = spr_eden_flustered;
			if (arg1 == "dramatic")
				face_image = spr_eden_dramatic;
			if (arg1 == "dead")
				face_image = spr_eden_dead;
			if (arg1 == "deadeye")
				face_image = spr_eden_deadeye;
			if (arg1 == "yelling")
				face_image = spr_eden_yelling;
			if (arg1 == "upset")
				face_image = spr_eden_upset;
			if (arg1 == "offguard")
				face_image = spr_eden_offguard;
			if (arg1 == "distressed")
				face_image = spr_eden_bh_distressed;
			if (arg1 == "superhappy")
				face_image = spr_eden_bh_super_happy;
			if (arg1 == "bedangry")
				face_image = spr_eden_bh_angry;
			if (arg1 == "crazy")
				face_image = spr_eden_bh_crazy;
			if (arg1 == "halfasleep")
				face_image = spr_eden_bh_half_asleep;
			if (arg1 == "scaredcontrol")
				face_image = spr_eden_bh_scaredcontrol;
			if (arg1 == "getover")
				face_image = spr_eden_bh_getover;
			if (arg1 == "happysleep")
				face_image = spr_eden_bh_happy;
			if (arg1 == "miffed")
				face_image = spr_eden_bh_miffed;
			if (arg1 == "bedscared")
				face_image = spr_eden_bh_scared;
			if (arg1 == "neu")
				face_image = spr_eden_bh_neu;
			if (arg1 == "crycurious")
				face_image = spr_eden_cry_curious;
			if (arg1 == "crydisappointed")
				face_image = spr_eden_cry_disappointed;
			if (arg1 == "cryhalfsmile")
				face_image = spr_eden_cry_halfsmile;
			if (arg1 == "crymad")
				face_image = spr_eden_cry_mad;
			if (arg1 == "cryscared")
				face_image = spr_eden_cry_scared;
			if (arg1 == "cryshocked")
				face_image = spr_eden_cry_shocked;
			if (arg1 == "crysmile")
				face_image = spr_eden_cry_smile;
			if (arg1 == "cryuneasy")
				face_image = spr_eden_cry_uneasy;
			if (arg1 == "cryswallow")
				face_image = spr_eden_cry_swallow;
			if (arg1 == "crysurprised")
				face_image = spr_eden_cry_surprised;
			if (arg1 == "crynervous")
				face_image = spr_eden_cry_nervous;
			global.sound = snd_eden;
			break;
		case "gray":
			if (room == rm_auditorium)
				global.talking = obj_theater_control;
			face_image = -1;
			if (arg1 == "condescending")
				face_image = spr_gray_condescending;
			if (arg1 == "happy")
				face_image = spr_gray_happy;
			if (arg1 == "smug")
				face_image = spr_gray_smug;
			if (arg1 == "summin")
				face_image = spr_gray_summin;
			if (arg1 == "surprised")
				face_image = spr_gray_surprised;
			if (arg1 == "dumb")
				face_image = spr_gray_dumb;
			if (arg1 == "holdingback")
				face_image = spr_gray_holdingback;
			if (arg1 == "nervous")
				face_image = spr_gray_nervous;
			if (arg1 == "shocked")
				face_image = spr_gray_shocked;
			if (arg1 == "dramatic")
				face_image = spr_gray_dramatic;
			if (arg1 == "occupied")
				face_image = spr_gray_occupied;
			if (arg1 == "angry")
				face_image = spr_gray_angry;
			if (arg1 == "angryright")
				face_image = spr_gray_angryright;
			if (arg1 == "inquisite")
				face_image = spr_gray_inquisite;
			if (arg1 == "silly")
				face_image = spr_gray_silly;
			if (arg1 == "flustered")
				face_image = spr_gray_flustered;
			if (arg1 == "graymiffed")
				face_image = spr_gray_bh_miffed;
			if (arg1 == "ohshit")
				face_image = spr_gray_bh_ohshit;
			if (arg1 == "stressed")
				face_image = spr_gray_bh_stressed;
			if (arg1 == "tweak")
				face_image = spr_gray_bh_tweak;
			if (arg1 == "shout")
				face_image = spr_gray_bh_shout;
			if (arg1 == "bhangry")
				face_image = spr_gray_bh_angry;
			if (arg1 == "bheyeroll")
				face_image = spr_gray_bh_eyeroll;
			if (arg1 == "bhhappy")
				face_image = spr_gray_bh_happy;
			if (arg1 == "bhsmug")
				face_image = spr_gray_bh_smug;
			if (arg1 == "bhsmugl")
				face_image = spr_gray_bh_smugl;
			global.sound = snd_gray;
			break;
		case "shifty":
			if (arg1 == "normal")
				face_image = spr_shifty_normal;
			if (arg1 == "buggin")
				face_image = spr_shifty_buggin;
			if (arg1 == "tweakin")
				face_image = spr_shifty_tweakin;
			if (arg1 == "shifty")
				face_image = spr_shifty_shifty;
			if (arg1 == "evil")
				face_image = spr_shifty_evil;
			if (arg1 == "cry")
				face_image = spr_shifty_cry;
			if (arg1 == "tweak2")
				face_image = spr_shifty_tweak2;
			global.sound = snd_shifty;
			break;
		case "chai":
			if (arg1 == "ff")
				face_image = spr_chai_ff;
			if (arg1 == "disappointed")
				face_image = spr_chai_disappointed;
			if (arg1 == "neutral")
				face_image = spr_chai_neutral;
			if (arg1 == "rolleyes")
				face_image = spr_chai_rolleyes;
			if (arg1 == "scared")
				face_image = spr_chai_scared;
			if (arg1 == "angry")
				face_image = spr_chai_angertalk;
			if (arg1 == "sad")
				face_image = spr_chai_sad;
			if (arg1 == "disappointedcry")
				face_image = spr_chai_disappointed_cry;
			if (arg1 == "needtolockin")
				face_image = spr_chai_needtolockin;
			if (arg1 == "tweakeraway")
				face_image = spr_chai_tweaker_away;
			if (arg1 == "sobbing")
				face_image = spr_chai_sobbing;
			if (arg1 == "blink")
				face_image = spr_chai_blink;
			if (arg1 == "sobbingatyou")
				face_image = spr_chai_sobbingatyou;
			if (arg1 == "sadsmile")
				face_image = spr_chai_sadsmile;
			if (arg1 == "tweaker")
				face_image = spr_chai_tweaker;
			if (arg1 == "remorseful")
				face_image = spr_chai_remorseful;
			if (arg1 == "neutralFB")
				face_image = spr_chai_neutralFB;
			if (arg1 == "scaredFB")
				face_image = spr_chai_scaredFB;
			if (arg1 == "unsureFB")
				face_image = spr_chai_unsureFB;
			if (arg1 == "terrorFB")
				face_image = spr_chai_terrorFB;
			if (arg1 == "spookedFB")
				face_image = spr_chai_spookedFB;
			if (arg1 == "concernedFB")
				face_image = spr_chai_concernedFB;
			if (arg1 == "dreamworksFB")
				face_image = spr_chai_dreamworksFB;
			if (arg1 == "happyFB")
				face_image = spr_chai_happyFB;
			if (arg1 == "remorsefulcry")
				face_image = spr_chai_embarrassedcry;
			if (arg1 == "crysmile")
				face_image = spr_chai_crysmile;
			if (arg1 == "blinksmile")
				face_image = spr_chai_blinksmile;
			if (arg1 == "smile")
				face_image = spr_chai_smile;
			if (arg1 == "smileleft")
				face_image = spr_chai_smileleft;
			if (arg1 == "blushsmile")
				face_image = spr_chai_blushsmile;
			if (arg1 == "blushsmirk")
				face_image = spr_chai_blushsmirk;
			if (arg1 == "miffed")
				face_image = spr_chai_miffed;
			if (arg1 == "sadatyou")
				face_image = spr_chai_sadatyou;
			global.sound = snd_chai;
			break;
		case "kaitlyn":
			if (arg1 == "neutral")
				face_image = spr_kaitlyn_neutral;
			if (arg1 == "ugh")
				face_image = spr_kaitlyn_ugh;
			if (arg1 == "smug")
				face_image = spr_kaitlyn_smug;
			if (arg1 == "smile")
				face_image = spr_kaitlyn_smile;
			if (arg1 == "neutralFB")
				face_image = spr_kaitlyn_neutral_FB;
			if (arg1 == "smugFB")
				face_image = spr_kaitlyn_smug_FB;
			if (arg1 == "empatheticFB")
				face_image = spr_kaitlyn_empathetic_FB;
			if (arg1 == "madFB")
				face_image = spr_kaitlyn_mad_FB;
			if (arg1 == "terrorFB")
				face_image = spr_kaitlyn_terror_FB;
			if (arg1 == "faded")
				face_image = spr_kaitlyn_faded;
			global.sound = snd_kaitlyn;
			break;
		case "alaska":
			if (arg1 == "neutral")
				face_image = spr_alaska_neutral;
			if (arg1 == "disappointed")
				face_image = spr_alaska_disappointed;
			if (arg1 == "smug")
				face_image = spr_alaska_smug;
			if (arg1 == "happy")
				face_image = spr_alaska_happy;
			if (arg1 == "hyped")
				face_image = spr_alaska_hyped;
			if (arg1 == "smugFB")
				face_image = spr_alaska_smug_FB;
			if (arg1 == "happyFB")
				face_image = spr_alaska_happy_FB;
			if (arg1 == "neutralFB")
				face_image = spr_alaska_neutral_FB;
			if (arg1 == "normalFB")
				face_image = spr_alaska_normal_FB;
			if (arg1 == "shockedFB")
				face_image = spr_alaska_shocked_FB;
			if (arg1 == "hehFB")
				face_image = spr_alaska_heh_FB;
			if (arg1 == "joyFB")
				face_image = spr_alaska_joy_FB;
			if (arg1 == "lookleftFB")
				face_image = spr_alaska_lookleft_FB;
			if (arg1 == "lookrightFB")
				face_image = spr_alaska_lookright_FB;
			if (arg1 == "disleftFB")
				face_image = spr_alaska_disleft_FB;
			if (arg1 == "disrightFB")
				face_image = spr_alaska_disright_FB;
			if (arg1 == "concernedFB")
				face_image = spr_alaska_concerned_FB;
			if (arg1 == "angryFB")
				face_image = spr_alaska_angry_FB;
			global.sound = snd_alaska;
			break;
		case "destiny":
			if (arg1 == "neutral")
				face_image = spr_destiny_neutral;
			if (arg1 == "scared")
				face_image = spr_destiny_scared;
			if (arg1 == "smug")
				face_image = spr_destiny_smug;
			if (arg1 == "smile")
				face_image = spr_destiny_smile;
			if (arg1 == "angry")
				face_image = spr_destiny_angry;
			if (arg1 == "ashamed")
				face_image = spr_destiny_ashamed;
			if (arg1 == "smugFB")
				face_image = spr_destiny_smug_FB;
			if (arg1 == "scaredFB")
				face_image = spr_destiny_scared_FB;
			if (arg1 == "nervousFB")
				face_image = spr_destiny_nervous_FB;
			if (arg1 == "ashamedFB")
				face_image = spr_destiny_ashamed_FB;
			if (arg1 == "smileFB")
				face_image = spr_destiny_smile_FB;
			if (arg1 == "neutralFB")
				face_image = spr_destiny_neutral_FB;
			if (arg1 == "yesmaamFB")
				face_image = spr_destiny_yesmaam_FB;
			if (arg1 == "eyerollFB")
				face_image = spr_destiny_eyeroll_FB;
			if (arg1 == "horrorFB")
				face_image = spr_destiny_horror_FB;
			if (arg1 == "founditFB")
				face_image = spr_destiny_foundit_FB;
			if (arg1 == "frustratedFB")
				face_image = spr_destiny_frustrated_FB;
			if (arg1 == "distractedFB")
				face_image = spr_destiny_distracted_FB;
			if (arg1 == "spookedFB")
				face_image = spr_destiny_spooked_FB;
			if (arg1 == "madFB")
				face_image = spr_destiny_mad_FB;
			global.sound = snd_destiny;
			break;
		case "lib":
			face_image = -1;
			global.talking = obj_librarb;
			break;
		case "monst":
			face_image = -1;
			global.talking = obj_monst;
			break;
	}
}
