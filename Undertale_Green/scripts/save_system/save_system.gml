function save()
{
	var save_struct = 
	{
		fun: global.fun,
		eden_dance: global.eden_dance,
		inventory: global.inventory,
		player_x: obj_player.x,
		player_y: obj_player.y,
		facing: obj_player.facing,
		game_time: global.game_time,
		last_save_time: global.last_save_time,
		last_location: global.last_location,
		save_photo: global.save_photo,
		journal: global.journal,
		intro_cut_parkinglot: global.intro_cut_parkinglot,
		curr_room: room,
		edenroom_entered: global.edenroom_entered,
		love: global.level_of_kindness,
		hp: global.hp,
		max_hp: global.maxhp,
		money: global.money,
		exp: global.exp,
		exp_left: global.expleft,
		chai_firsttime: global.chai_firsttime,
		msg: global.msg,
		msg_esp: global.msg_esp,
		choices_zero: global.choices[0],
		choices_one: global.choices[1],
		choices_esp_zero: global.choices_esp[0],
		choices_esp_one: global.choices_esp[1],
		sound: global.sound,
		face_x: global.face_x,
		inventory: global.inventory,
		battle_start_msg: global.battle_start_msg,
		battle_start_msg_esp: global.battle_start_msg_esp,
		item_used: global.item_used,
		has_battled: global.has_battled,
		cutscene: global.cutscene,
		choice_object: global.choice_object,
		backstage_unlocked: global.backstage_unlocked,
		office_unlocked: global.office_unlocked,
		shopkeep_tree: global.shopkeep_tree,
		snowflake_bit: global.snowflake_bit,
		terror_triplets: global.terror_triplets,
		yetti_dialogue_1: global.yetti_dialogue_1,
		yetti_dialogue_2: global.yetti_dialogue_2,
		yetti_dialogue_3: global.yetti_dialogue_3,
		lobby_unlocked: global.lobby_unlocked,
		grdoor_enterable: global.grdoor_enterable,
		keycard_prompt: global.keycard_prompt,
		keyunlock: global.keyunlock,
		helmet_prompt1: global.helmet_prompt1,
		helmet_prompt2: global.helmet_prompt2,
		helmet_prompt3: global.helmet_prompt3,
		helmet_unlock1: global.helmet_unlock1,
		helmet_unlock2: global.helmet_unlock2,
		helmet_unlock3: global.helmet_unlock3,
		yeti_leave1: global.yeti_leave1,
		yeti_leave2: global.yeti_leave2,
		yeti_leave3: global.yeti_leave3,
		deliverable: global.deliverable,
		vent_enter_down: global.vent_enter_down,
		vent_exit_down: global.vent_exit_down,
		yeti1_obtained: global.yeti1_obtained,
		yeti2_obtained: global.yeti2_obtained,
		yeti3_obtained: global.yeti3_obtained,
		gray_leave_lobby: global.gray_leave_lobby,
		spawn_on_left: global.spawn_on_left,
		flag_win: global.flag_win,
		break_room_enter: global.break_room_enter,
		eden_theme: global.eden_theme,
		battle_eden: global.battle_eden,
		battle_gray: global.battle_gray,
		battle_chai: global.battle_chai,
		battle_plush: global.battle_plush,
		random_atk: global.random_atk,
		eden_first_time: global.eden_first_time,
		people_leave: global.people_leave,
		greenroomcuttransition: global.greenroomcuttransition,
		greenroomcut: global.greenroomcut,
		pitpunks_spawn: global.pitpunks_spawn,
		greenroom_dummy: global.greenroom_dummy,
		greenroomadvance1: global.greenroomadvance1,
		greenroomadvance2: global.greenroomadvance2,
		greenroomadvance3: global.greenroomadvance3,
		greenroomadvance4: global.greenroomadvance4,
		greenroomadvance5: global.greenroomadvance5,
		greenroomadvance6: global.greenroomadvance6,
		eden_intro_text: global.eden_intro_text,
		eden_turn_end: global.eden_turn_end,
		gray_buttons: global.gray_buttons,
		end_battle: global.end_battle,
		basement_photo: global.basement_photo,
		cutscene_gray_eden_triggered: global.cutscene_gray_eden_triggered,
		battle_bg: global.battle_bg,
		battle_index: global.battle_index,
		school_time_sequence: global.school_time_sequence,
		pause: global.pause,
		blueberry_bush_attained: global.blueberry_bush_attained,
		jollypop_attained: global.jollypop_attained,
		piece_b: global.piece_b,
		piece_g: global.piece_g,
		piece_go: global.piece_go,
		piece_go2: global.piece_go2,
		piece_o: global.piece_o,
		piece_p: global.piece_p,
		piece_po: global.piece_po,
		piece_rb: global.piece_rb,
		piece_wp: global.piece_wp,
		piece_wy: global.piece_wy,
		shadowguy_trigger: global.shadowguy_trigger,
		shadowguy_trigger_2: global.shadowguy_trigger_2,
		pitorch_sound: global.pitorch_sound,
		eden_sound: global.eden_sound,
		bathroom_order: global.bathroom_order,
		carnightcut: global.carnightcut,
		has_battled_gray: global.has_battled_gray,
		office_cutscene: global.office_cutscene,
		eden_gone: global.eden_gone,
		stagehand: global.stagehand,
		lootdrops: global.lootdrops,
		forest_cutscene: global.forest_cutscene,
		shopkeep_cutscene: global.shopkeep_cutscene,
		bench_cut: global.bench_cut,
		chai_entered: global.chai_entered,
		yeti_for_purchase: global.yeti_for_purchase,
		items_collected: global.items_collected,
		gray_fight_resume: global.gray_fight_resume,
		hall3door_enterable: global.hall3door_enterable,
		eden_spotlight_leave: global.eden_spotlight_leave,
		eden_drivewaycut: global.eden_drivewaycut,
		second_dia: global.second_dia,
		plush_battled: global.plush_battled,
		battle_hashealed: global.battle_hashealed,
		red_switch: global.red_switch,
		firstdressing: global.firstdressing
	};
	jsonSave(save_struct, "act0_file" + string(global.act0_save));
	show_debug_message("Saved!");
	if (global.act0_save == 1)
	{
		global.transfer_act0[0] = 0;
		data_transfer_save();
	}
	if (global.act0_save == 2)
	{
		global.transfer_act0[1] = 0;
		data_transfer_save();
	}
	if (global.act0_save == 3)
	{
		global.transfer_act0[2] = 0;
		data_transfer_save();
	}
}

function load()
{
	var currentSaveExists = (file_exists("act0_file1") && global.act0_save == 1) || (file_exists("act0_file2") && global.act0_save == 2) || (file_exists("act0_file3") && global.act0_save == 3);
	if (currentSaveExists)
	{
		show_debug_message("You shouldn't BE here...");
		var dataToLoad = jsonLoad("act0_file" + string(global.act0_save));
		global.inventory = dataToLoad.inventory;
		x = dataToLoad.player_x;
		y = dataToLoad.player_y;
		room = dataToLoad.curr_room;
		facing = dataToLoad.facing;
		global.fun = dataToLoad.fun;
		global.game_time = dataToLoad.game_time;
		global.last_save_time = dataToLoad.last_save_time;
		global.last_location = dataToLoad.last_location;
		global.save_photo = dataToLoad.save_photo;
		global.journal = dataToLoad.journal;
		global.level_of_kindness = dataToLoad.love;
		global.hp = dataToLoad.hp;
		global.maxhp = dataToLoad.max_hp;
		global.money = dataToLoad.money;
		global.items_collected = dataToLoad.items_collected;
		global.exp = dataToLoad.exp;
		global.expleft = dataToLoad.exp_left;
		global.msg = dataToLoad.msg;
		global.msg_esp = dataToLoad.msg_esp;
		global.choices[0] = dataToLoad.choices_zero;
		global.choices[1] = dataToLoad.choices_one;
		global.choices_esp[0] = dataToLoad.choices_esp_zero;
		global.choices_esp[1] = dataToLoad.choices_esp_one;
		global.sound = dataToLoad.sound;
		global.face_x = dataToLoad.face_x;
		global.inventory = dataToLoad.inventory;
		global.battle_start_msg = dataToLoad.battle_start_msg;
		global.battle_start_msg_esp = dataToLoad.battle_start_msg_esp;
		global.item_used = dataToLoad.item_used;
		global.has_battled = dataToLoad.has_battled;
		global.cutscene = dataToLoad.cutscene;
		global.choice_object = dataToLoad.choice_object;
		global.backstage_unlocked = dataToLoad.backstage_unlocked;
		global.office_unlocked = dataToLoad.office_unlocked;
		global.snowflake_bit = dataToLoad.snowflake_bit;
		global.terror_triplets = dataToLoad.terror_triplets;
		global.yetti_dialogue_1 = dataToLoad.yetti_dialogue_1;
		global.yetti_dialogue_2 = dataToLoad.yetti_dialogue_2;
		global.yetti_dialogue_3 = dataToLoad.yetti_dialogue_3;
		global.lobby_unlocked = dataToLoad.lobby_unlocked;
		global.grdoor_enterable = dataToLoad.grdoor_enterable;
		global.keycard_prompt = dataToLoad.keycard_prompt;
		global.keyunlock = dataToLoad.keyunlock;
		global.helmet_prompt1 = dataToLoad.helmet_prompt1;
		global.helmet_prompt2 = dataToLoad.helmet_prompt2;
		global.helmet_prompt3 = dataToLoad.helmet_prompt3;
		global.helmet_unlock1 = dataToLoad.helmet_unlock1;
		global.helmet_unlock2 = dataToLoad.helmet_unlock2;
		global.helmet_unlock3 = dataToLoad.helmet_unlock3;
		global.yeti_leave1 = dataToLoad.yeti_leave1;
		global.yeti_leave2 = dataToLoad.yeti_leave2;
		global.yeti_leave3 = dataToLoad.yeti_leave3;
		global.deliverable = dataToLoad.deliverable;
		global.vent_enter_down = dataToLoad.vent_enter_down;
		global.vent_exit_down = dataToLoad.vent_exit_down;
		global.yeti1_obtained = dataToLoad.yeti1_obtained;
		global.yeti2_obtained = dataToLoad.yeti2_obtained;
		global.yeti3_obtained = dataToLoad.yeti3_obtained;
		global.gray_leave_lobby = dataToLoad.gray_leave_lobby;
		global.spawn_on_left = dataToLoad.spawn_on_left;
		global.flag_win = dataToLoad.flag_win;
		global.shopkeep_tree = dataToLoad.shopkeep_tree;
		global.edenroom_entered = dataToLoad.edenroom_entered;
		global.break_room_enter = dataToLoad.break_room_enter;
		global.eden_theme = dataToLoad.eden_theme;
		global.battle_eden = dataToLoad.battle_eden;
		global.battle_gray = dataToLoad.battle_gray;
		global.battle_chai = dataToLoad.battle_chai;
		global.battle_plush = dataToLoad.battle_plush;
		global.random_atk = dataToLoad.random_atk;
		global.eden_first_time = dataToLoad.eden_first_time;
		global.people_leave = dataToLoad.people_leave;
		global.greenroomcuttransition = dataToLoad.greenroomcuttransition;
		global.greenroomcut = dataToLoad.greenroomcut;
		global.pitpunks_spawn = dataToLoad.pitpunks_spawn;
		global.greenroom_dummy = dataToLoad.greenroom_dummy;
		global.greenroomadvance1 = dataToLoad.greenroomadvance1;
		global.greenroomadvance2 = dataToLoad.greenroomadvance2;
		global.greenroomadvance3 = dataToLoad.greenroomadvance3;
		global.greenroomadvance4 = dataToLoad.greenroomadvance4;
		global.greenroomadvance5 = dataToLoad.greenroomadvance5;
		global.greenroomadvance6 = dataToLoad.greenroomadvance6;
		global.eden_intro_text = dataToLoad.eden_intro_text;
		global.eden_turn_end = dataToLoad.eden_turn_end;
		global.intro_cut_parkinglot = dataToLoad.intro_cut_parkinglot;
		global.gray_buttons = dataToLoad.gray_buttons;
		global.end_battle = dataToLoad.end_battle;
		global.cutscene_gray_eden_triggered = dataToLoad.cutscene_gray_eden_triggered;
		global.battle_bg = dataToLoad.battle_bg;
		global.basement_photo = dataToLoad.basement_photo;
		global.battle_index = dataToLoad.battle_index;
		global.school_time_sequence = dataToLoad.school_time_sequence;
		global.pause = dataToLoad.pause;
		global.blueberry_bush_attained = dataToLoad.blueberry_bush_attained;
		global.jollypop_attained = dataToLoad.jollypop_attained;
		global.piece_b = dataToLoad.piece_b;
		global.piece_g = dataToLoad.piece_g;
		global.chai_firsttime = dataToLoad.chai_firsttime;
		global.piece_go = dataToLoad.piece_go;
		global.piece_go2 = dataToLoad.piece_go2;
		global.piece_o = dataToLoad.piece_o;
		global.piece_p = dataToLoad.piece_p;
		global.piece_po = dataToLoad.piece_po;
		global.piece_rb = dataToLoad.piece_rb;
		global.piece_wp = dataToLoad.piece_wp;
		global.piece_wy = dataToLoad.piece_wy;
		global.eden_dance = dataToLoad.eden_dance;
		global.pitorch_sound = dataToLoad.pitorch_sound;
		global.eden_sound = dataToLoad.eden_sound;
		global.bathroom_order = dataToLoad.bathroom_order;
		global.shadowguy_trigger = dataToLoad.shadowguy_trigger;
		global.shadowguy_trigger_2 = dataToLoad.shadowguy_trigger_2;
		global.eden_gone = dataToLoad.eden_gone;
		global.stagehand = dataToLoad.stagehand;
		global.lootdrops = dataToLoad.lootdrops;
		global.forest_cutscene = dataToLoad.forest_cutscene;
		global.shopkeep_cutscene = dataToLoad.shopkeep_cutscene;
		global.bench_cut = dataToLoad.bench_cut;
		global.chai_entered = dataToLoad.chai_entered;
		global.gray_fight_resume = dataToLoad.gray_fight_resume;
		global.has_battled_gray = dataToLoad.has_battled_gray;
		global.yeti_for_purchase = dataToLoad.yeti_for_purchase;
		global.hall3door_enterable = dataToLoad.hall3door_enterable;
		global.eden_spotlight_leave = dataToLoad.eden_spotlight_leave;
		global.eden_drivewaycut = dataToLoad.eden_drivewaycut;
		global.office_cutscene = dataToLoad.office_cutscene;
		global.carnightcut = dataToLoad.carnightcut;
		global.second_dia = dataToLoad.second_dia;
		global.plush_battled = dataToLoad.plush_battled;
		global.battle_hashealed = dataToLoad.battle_hashealed;
		global.red_switch = dataToLoad.red_switch;
		global.firstdressing = dataToLoad.firstdressing;
		global.right_soldier = false;
		global.left_soldier = false;
		global.trip = false;
		global.piece_hit_number = 1;
		global.slowfade = false;
		global.previous_soldier = 0;
		global.ebott_main_played = false;
		global.talking = 0;
		global.empty_greenroom = false;
		global.p_sys = 0;
		global.page_number = 0;
		global.stored_items = [];
		global.heart_beated = false;
		global.battle_prompt = 0;
		global.battle_heal = 1;
		global.plush_flee_attempt = 0;
	}
	else
	{
		room = rm_road_rain;
	}
}

function data_transfer_save()
{
	var save_data = 
	{
		transfer_act0: global.transfer_act0,
		transfer_act1: global.transfer_act1,
		transfer_act2: global.transfer_act2,
		transfer_act3: global.transfer_act3,
		placeholder1: global.placeholder1,
		placeholder2: global.placeholder2,
		placeholder3: global.placeholder3,
		placeholder4: global.placeholder4,
		placeholder5: global.placeholder5,
		placeholder6: global.placeholder6,
		placeholder7: global.placeholder7,
		placeholder8: global.placeholder8,
		placeholder9: global.placeholder9,
		placeholder10: global.placeholder10,
		placeholder11: global.placeholder11,
		placeholder12: global.placeholder12
	};
	jsonSave(save_data, "data_transfer");
	show_debug_message("Saved!");
}

function jsonSave(arg0, arg1)
{
	var _json = json_stringify(arg0);
	var _size = string_byte_length(_json);
	var _buff = buffer_create(_size, buffer_fixed, 1);
	buffer_write(_buff, buffer_text, _json);
	var _key = 729843905493830300000000000;
	cryptography_rc4(_buff, _key, 0, _size);
	buffer_save(_buff, arg1);
	buffer_delete(_buff);
}

function jsonLoad(arg0)
{
	var _buff = buffer_load(arg0);
	var _key = 729843905493830300000000000;
	var _size = buffer_get_size(_buff);
	cryptography_rc4(_buff, _key, 0, _size);
	buffer_seek(_buff, buffer_seek_start, 0);
	var _json = buffer_read(_buff, buffer_text);
	buffer_delete(_buff);
	var _struct = json_parse(_json);
	return _struct;
}

function cryptography_rc4(arg0, arg1, arg2, arg3)
{
	var s = array_create(256);
	var _keyLength = string_byte_length(arg1);
	for (i = 255; i >= 0; i--)
		s[i] = i;
	var j = 0;
	for (i = 0; i <= 255; i++)
	{
		j = (j + s[i] + string_byte_at(arg1, i % _keyLength)) % 256;
		var _temp = s[i];
		s[i] = s[j];
		s[j] = _temp;
	}
	var i = 0;
	j = 0;
	var _pos = 0;
	buffer_seek(arg0, buffer_seek_start, arg2);
	repeat (arg3)
	{
		i = (i + 1) % 256;
		j = (j + s[i]) % 256;
		var _temp = s[i];
		s[i] = s[j];
		s[j] = _temp;
		var _currentByte = buffer_peek(arg0, _pos++, buffer_u8);
		buffer_write(arg0, buffer_u8, s[(s[i] + s[j]) % 256] ^ _currentByte);
	}
}
