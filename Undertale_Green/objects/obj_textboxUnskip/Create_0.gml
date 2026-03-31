p = 0;
unskip = true;
if (global.language == 0)
	m = string_concat_ext(global.msg);
if (global.language == 1)
	m = string_concat_ext(global.msg_esp);
if (!instance_exists(obj_stagehand_run))
	textspeed = 0.5;
else
	textspeed = 1;
face_image = -1;
face_x = 0;
if (obj_player.y > (room_height - 120))
	txt_y = -312;
else
	txt_y = 0;
global.olive_walk1 = false;
global.advance_cutscene = false;
is_choice = false;
choice = 0;
choice_x = 0;
choice2_x = 0;
option_x = 0;
global.pause = 0;
index = 0;
fasttext = false;
fasttext_ord = 0;
skip_fast = keyboard_check(vk_lcontrol);
confirm_fast = 0;
s = scribble(m);
s.scale(2);
if (global.language == 0)
	s.starting_format("fnt_determination", c_white);
if (global.language == 1)
	s.starting_format("fnt_determination_esp", c_white);
s.line_height(0, -1);
s.line_spacing("112%");
if (global.language == 0)
	ch = scribble(global.choices[0]);
if (global.language == 1)
	ch = scribble(global.choices_esp[0]);
ch.scale(2);
if (global.language == 0)
	ch.starting_format("fnt_determination", c_white);
if (global.language == 1)
	ch.starting_format("fnt_determination_esp", c_white);
ch.line_height(0, -1);
ch.line_spacing("112%");
ch.align(1, 0);
if (global.language == 0)
	ch2 = scribble(global.choices[1]);
if (global.language == 1)
	ch2 = scribble(global.choices_esp[1]);
ch2.scale(2);
if (global.language == 0)
	ch2.starting_format("fnt_determination", c_white);
if (global.language == 1)
	ch2.starting_format("fnt_determination_esp", c_white);
ch2.line_height(0, -1);
ch2.line_spacing("112%");
ch2.align(1, 0);
t = scribble_typist();
t.in(0.5, 0);
t.sound_per_char(global.sound, 1, 1, " ");
tch = scribble_typist();
tch.in(0.5, 0);
tch.sound_per_char(global.sound, 1, 1, " ");
tch2 = scribble_typist();
tch2.in(0.5, 0);
tch2.sound_per_char(global.sound, 1, 1, " ");
obj_player.pressed = true;
scribble_typists_add_event("choice", function(arg0, arg1, arg2)
{
	is_choice = true;
});
scribble_typists_add_event("binderopen", function(arg0, arg1, arg2)
{
	obj_script.binderopen = true;
});
scribble_typists_add_event("character", function(arg0, arg1, arg2)
{
	scr_character(string(arg1[0]), string(arg1[1]));
});
scribble_typists_add_event("owsprite", function(arg0, arg1, arg2)
{
	scr_owsprite(string(arg1[0]), string(arg1[1]));
});
scribble_typists_add_event("slowtext", function(arg0, arg1, arg2)
{
	textspeed = 0.2;
});
scribble_typists_add_event("normaltext", function(arg0, arg1, arg2)
{
	textspeed = 0.5;
});
scribble_typists_add_event("fasttext", function(arg0, arg1, arg2)
{
	textspeed = 2;
});
scribble_typists_add_event("groverrun", function(arg0, arg1, arg2)
{
	obj_alaska_hallway1.groverbit = true;
	obj_alaska_hallway1.groverrun = true;
});
scribble_typists_add_event("groverran", function(arg0, arg1, arg2)
{
	obj_alaska_hallway1.groverran = true;
});
scribble_typists_add_event("switchlanguage", function(arg0, arg1, arg2)
{
	global.language += 1;
	if (global.language == 2)
		global.language = 0;
});
scribble_typists_add_event("funnylighton", function(arg0, arg1, arg2)
{
	obj_spotlight_gr.image_index = 1;
	obj_eden_boarder.image_index = 1;
	audio_play_sound(snd_impact, 1, 0);
	audio_pause_sound(mus_greenroom);
	audio_play_sound(mus_gray_womp_womp, 1, true);
	p_sys = part_system_create(pat_roses);
	part_system_depth(p_sys, -901);
});
scribble_typists_add_event("funnylighton2", function(arg0, arg1, arg2)
{
	obj_spotlight_gr.image_index = 1;
	obj_eden_boarder.image_index = 1;
	audio_play_sound(snd_impact, 1, 0);
	audio_pause_sound(mus_greenroom);
	audio_resume_sound(mus_gray_womp_womp);
	p_sys = part_system_create(pat_roses);
	part_system_depth(p_sys, -901);
});
scribble_typists_add_event("funnylightoff", function(arg0, arg1, arg2)
{
	obj_spotlight_gr.image_index = 0;
	obj_eden_boarder.image_index = 0;
	audio_play_sound(snd_impact, 1, 0);
	audio_resume_sound(mus_greenroom);
	audio_pause_sound(mus_gray_womp_womp);
	part_system_destroy(p_sys);
});
scribble_typists_add_event("ffclear", function(arg0, arg1, arg2)
{
});
scribble_typists_add_event("destroy", function(arg0, arg1, arg2)
{
	instance_destroy(obj_textboxNEW);
});
scribble_typists_add_event("advance", function(arg0, arg1, arg2)
{
	global.advance_cutscene = true;
});
scribble_typists_add_event("greentransition", function(arg0, arg1, arg2)
{
	global.greenroomcut = true;
	global.greenroomcuttransition = true;
	global.battle_gray = false;
	global.empty_greenroom = true;
});
scribble_typists_add_event("testtransition", function(arg0, arg1, arg2)
{
	global.greenroomcut = true;
	global.greenroomcuttransition = true;
	global.school_time_sequence = 2;
});
scribble_typists_add_event("advance2", function(arg0, arg1, arg2)
{
	global.advance_cutscene2 = true;
});
scribble_typists_add_event("edenleaveschool", function(arg0, arg1, arg2)
{
	obj_eden_cry.edenleaveschool = true;
});
scribble_typists_add_event("turn_switch", function(arg0, arg1, arg2)
{
	if (room == rm_battle)
		obj_battle_system.turn = BattleTurn.ENEMY;
});
scribble_typists_add_event("freeze", function(arg0, arg1, arg2)
{
	global.pause = 1;
});
scribble_typists_add_event("continue", function(arg0, arg1, arg2)
{
	global.pause = 0;
});
scribble_typists_add_event("pitpunks", function(arg0, arg1, arg2)
{
	global.pitpunks_spawn = true;
});
scribble_typists_add_event("slide", function(arg0, arg1, arg2)
{
	global.slide = true;
});
scribble_typists_add_event("startolivewalk", function(arg0, arg1, arg2)
{
	global.olive_walk1 = true;
});
scribble_typists_add_event("shopkeepintro", function(arg0, arg1, arg2)
{
	obj_shop_entry.shopkeepintro = true;
});
scribble_typists_add_event("dooropen", function(arg0, arg1, arg2)
{
	obj_shop_entry.dooropen = true;
});
scribble_typists_add_event("shopenter", function(arg0, arg1, arg2)
{
	obj_shop_entry.shopenter = true;
});
scribble_typists_add_event("stopolivewalk", function(arg0, arg1, arg2)
{
	global.olive_walk1 = false;
});
scribble_typists_add_event("greenroomadvance1", function(arg0, arg1, arg2)
{
	global.greenroomadvance1 = true;
});
scribble_typists_add_event("greenroomadvance2", function(arg0, arg1, arg2)
{
	global.greenroomadvance2 = true;
});
scribble_typists_add_event("driveway1", function(arg0, arg1, arg2)
{
	obj_eden_driveway_cntrl.driveway1 = true;
});
scribble_typists_add_event("driveway2", function(arg0, arg1, arg2)
{
	obj_eden_driveway_cntrl.driveway2 = true;
});
scribble_typists_add_event("driveway3", function(arg0, arg1, arg2)
{
	obj_eden_driveway_cntrl.driveway3 = true;
});
scribble_typists_add_event("driveway4", function(arg0, arg1, arg2)
{
	obj_eden_driveway_cntrl.driveway4 = true;
});
scribble_typists_add_event("driveway5", function(arg0, arg1, arg2)
{
	obj_eden_driveway_cntrl.driveway5 = true;
});
scribble_typists_add_event("junk1", function(arg0, arg1, arg2)
{
	obj_eden_junk.junk1 = true;
});
scribble_typists_add_event("junk2", function(arg0, arg1, arg2)
{
	obj_eden_junk.junk2 = true;
});
scribble_typists_add_event("junk3", function(arg0, arg1, arg2)
{
	obj_eden_junk.junk3 = true;
});
scribble_typists_add_event("junk4", function(arg0, arg1, arg2)
{
	obj_eden_junk.junk4 = true;
});
scribble_typists_add_event("junk5", function(arg0, arg1, arg2)
{
	obj_eden_junk.junk5 = true;
});
scribble_typists_add_event("junk6", function(arg0, arg1, arg2)
{
	obj_eden_junk.junk6 = true;
});
scribble_typists_add_event("hall1", function(arg0, arg1, arg2)
{
	obj_oliveeden_walk.hall1 = true;
});
scribble_typists_add_event("hall2", function(arg0, arg1, arg2)
{
	obj_oliveeden_walk.hall2 = true;
});
scribble_typists_add_event("grayshake", function(arg0, arg1, arg2)
{
	obj_gray_backstage.startshake = true;
	obj_gray_backstage.hspeed = 1;
});
scribble_typists_add_event("edenscared", function(arg0, arg1, arg2)
{
	obj_eden_greenroom.hspeed = 1;
	obj_eden_greenroom.vspeed = -1.5;
	obj_eden_greenroom.move_back = true;
	audio_play_sound(snd_noise, 1, false);
});
scribble_typists_add_event("greenroomadvance3", function(arg0, arg1, arg2)
{
	obj_player.shake = 4;
	audio_stop_sound(mus_greenroom);
	audio_stop_sound(mus_greenroom_lp);
	audio_stop_sound(mus_art_center);
	audio_stop_sound(mus_pitorch);
	audio_stop_sound(mus_pitorch_lp);
	audio_play_sound(snd_impact, 1, false);
});
scribble_typists_add_event("greenroomadvance4", function(arg0, arg1, arg2)
{
	global.greenroomadvance4 = true;
});
scribble_typists_add_event("greenroomadvance5", function(arg0, arg1, arg2)
{
	global.greenroomadvance5 = true;
});
scribble_typists_add_event("greenroomadvance6", function(arg0, arg1, arg2)
{
	global.greenroomadvance6 = true;
});
scribble_typists_add_event("olivegetup", function(arg0, arg1, arg2)
{
	obj_chai_forest.olivegetup = true;
});
scribble_typists_add_event("sitdown", function(arg0, arg1, arg2)
{
	obj_chai_forest.sitdown = true;
});
scribble_typists_add_event("chaigetup", function(arg0, arg1, arg2)
{
	obj_chai_forest.chaigetup = true;
});
scribble_typists_add_event("hug", function(arg0, arg1, arg2)
{
	obj_chai_forest.hug = true;
});
scribble_typists_add_event("hugend", function(arg0, arg1, arg2)
{
	obj_chai_forest.hugend = true;
});
scribble_typists_add_event("chaiwalktobench", function(arg0, arg1, arg2)
{
	obj_chai_forest.chaiwalktobench = true;
});
scribble_typists_add_event("destinymove", function(arg0, arg1, arg2)
{
	obj_destiny_greenroom.x += 4;
});
scribble_typists_add_event("lookdown", function(arg0, arg1, arg2)
{
	obj_dooreyes.lookdown = true;
});
scribble_typists_add_event("battle", function(arg0, arg1, arg2)
{
	global.cutscene_battle_start = true;
	scr_battler(string(arg1[0]));
	instance_destroy();
});
scribble_typists_add_event("fleefalse", function(arg0, arg1, arg2)
{
	global.flag_flee = false;
	global.has_battled = false;
});
scribble_typists_add_event("winfalse", function(arg0, arg1, arg2)
{
	global.flag_win = false;
	global.has_battled = false;
});
scribble_typists_add_event("ebottwalkoff", function(arg0, arg1, arg2)
{
	obj_ebott1_control.ebottwalkoff = true;
});
scribble_typists_add_event("diefalse", function(arg0, arg1, arg2)
{
	global.flag_die = false;
	global.has_battled = false;
	global.hp = 20;
	global.inventory = [];
	for (var i = 0; i < array_length(global.stored_items); i += 1)
		array_push(global.inventory, global.stored_items[i]);
});
scribble_typists_add_event("spotlightoff", function(arg0, arg1, arg2)
{
	audio_stop_sound(mus_eden_womp_womp);
	obj_spotlight.image_index = 0;
	obj_eden_boarder.image_index = 0;
	part_system_destroy(p_sys);
	audio_play_sound(snd_impact, 1, 0);
});
scribble_typists_add_event("spotlighton", function(arg0, arg1, arg2)
{
	audio_play_sound(mus_eden_womp_womp, 1, true);
	obj_spotlight.image_index = 1;
	obj_eden_boarder.image_index = 1;
	audio_play_sound(snd_impact, 1, 0);
	p_sys = part_system_create(pat_roses);
	part_system_depth(p_sys, -901);
});
scribble_typists_add_event("start_play_music", function(arg0, arg1, arg2)
{
	start_play_music();
});
scribble_typists_add_event("fadein", function(arg0, arg1, arg2)
{
	global.fade_in = true;
});
scribble_typists_add_event("fadeout", function(arg0, arg1, arg2)
{
	global.fade_out = true;
});
scribble_typists_add_event("beat1", function(arg0, arg1, arg2)
{
	global.beat1 = true;
});
scribble_typists_add_event("chairun", function(arg0, arg1, arg2)
{
	global.chai_run = true;
});
scribble_typists_add_event("snowflake", function(arg0, arg1, arg2)
{
	global.snowflake_bit = true;
});
scribble_typists_add_event("carnightcut", function(arg0, arg1, arg2)
{
	global.carnightcut = true;
});
scribble_typists_add_event("additemkeycard", function(arg0, arg1, arg2)
{
	audio_play_sound(snd_item, 1, false);
	add_item(global.itemlist.keycard);
});
scribble_typists_add_event("additemmasterkey", function(arg0, arg1, arg2)
{
	audio_play_sound(snd_item, 1, false);
	add_item(global.itemlist.masterkey);
});
scribble_typists_add_event("add1C", function(arg0, arg1, arg2)
{
	global.money += 1;
	audio_play_sound(snd_item, 1, false);
});
scribble_typists_add_event("additemnecklace", function(arg0, arg1, arg2)
{
	audio_play_sound(snd_item, 1, false);
	add_item(global.itemlist.necklace);
});
scribble_typists_add_event("additemhelmet", function(arg0, arg1, arg2)
{
	audio_play_sound(snd_item, 1, false);
	add_item(global.itemlist.helmet);
	if (room == rm_break_room)
		global.yeti1_obtained = true;
	if (room == rm_scary)
		global.yeti2_obtained = true;
});
scribble_typists_add_event("keyprompt", function(arg0, arg1, arg2)
{
	if (array_length(global.inventory) != 0)
		global.keycard_prompt = true;
});
scribble_typists_add_event("helmetprompt1", function(arg0, arg1, arg2)
{
	if (array_length(global.inventory) != 0)
		global.helmet_prompt1 = true;
});
scribble_typists_add_event("trailercont1", function(arg0, arg1, arg2)
{
	obj_trailer1_control.trailercont1 = true;
});
scribble_typists_add_event("trailercont2", function(arg0, arg1, arg2)
{
	obj_trailer1_control.trailercont2 = true;
});
scribble_typists_add_event("trailercont3", function(arg0, arg1, arg2)
{
	obj_trailer1_control.trailercont3 = true;
});
scribble_typists_add_event("trailercont4", function(arg0, arg1, arg2)
{
	obj_trailer1_control.trailercont4 = true;
});
scribble_typists_add_event("trailercont5", function(arg0, arg1, arg2)
{
	obj_chai_trailer.sprite_index = spr_chai_walk_u;
	obj_shadow.image_index = 1;
});
scribble_typists_add_event("helmetunlock1", function(arg0, arg1, arg2)
{
	global.helmet_unlock1 = true;
});
scribble_typists_add_event("helmetunlock2", function(arg0, arg1, arg2)
{
	global.helmet_unlock2 = true;
});
scribble_typists_add_event("helmetunlock3", function(arg0, arg1, arg2)
{
	global.helmet_unlock3 = true;
});
scribble_typists_add_event("helmetunlock3", function(arg0, arg1, arg2)
{
	global.helmet_unlock3 = true;
});
scribble_typists_add_event("unlockhall3", function(arg0, arg1, arg2)
{
	obj_locked_hall3_door.unlock = true;
});
scribble_typists_add_event("helmetprompt2", function(arg0, arg1, arg2)
{
	if (array_length(global.inventory) != 0)
		global.helmet_prompt2 = true;
});
scribble_typists_add_event("helmetprompt3", function(arg0, arg1, arg2)
{
	if (array_length(global.inventory) != 0)
		global.helmet_prompt3 = true;
});
scribble_typists_add_event("yetileave1", function(arg0, arg1, arg2)
{
	global.yeti_leave1 = true;
});
scribble_typists_add_event("yetileave2", function(arg0, arg1, arg2)
{
	global.yeti_leave2 = true;
});
scribble_typists_add_event("yetileave3", function(arg0, arg1, arg2)
{
	global.yeti_leave3 = true;
});
scribble_typists_add_event("keyunlock", function(arg0, arg1, arg2)
{
	global.keyunlock = true;
});
scribble_typists_add_event("yetti2", function(arg0, arg1, arg2)
{
	obj_yeti_girl.dialogue2 = true;
});
scribble_typists_add_event("yetti2_2", function(arg0, arg1, arg2)
{
	obj_yeti_girl_2.dialogue2 = true;
});
scribble_typists_add_event("yetti3_2", function(arg0, arg1, arg2)
{
	obj_yeti_girl_3.dialogue2 = true;
});
scribble_typists_add_event("hug", function(arg0, arg1, arg2)
{
	obj_chai_forest_bench.hug = true;
});
scribble_typists_add_event("hugend", function(arg0, arg1, arg2)
{
	obj_chai_forest_bench.hugend = true;
});
scribble_typists_add_event("additemblueberry", function(arg0, arg1, arg2)
{
	audio_play_sound(snd_item, 1, false);
	add_item(global.itemlist.blueberry);
});
scribble_typists_add_event("additemcmuffin", function(arg0, arg1, arg2)
{
	audio_play_sound(snd_item, 1, false);
	add_item(global.itemlist.muffin);
});
scribble_typists_add_event("additemjollypop", function(arg0, arg1, arg2)
{
	audio_play_sound(snd_item, 1, false);
	add_item(global.itemlist.jollypop);
});
scribble_typists_add_event("open_save", function(arg0, arg1, arg2)
{
	obj_save_spot.open_save = true;
});
scribble_typists_add_event("edenleave", function(arg0, arg1, arg2)
{
	cut1.edenleave = true;
});
scribble_typists_add_event("turnoff", function(arg0, arg1, arg2)
{
	audio_stop_sound(mus_car_song);
	audio_play_sound(snd_noise, 1, false, 0.55);
});
scribble_typists_add_event("beat_1", function(arg0, arg1, arg2)
{
	obj_blackscreen2.beat_1 = true;
});
scribble_typists_add_event("warptoschool", function(arg0, arg1, arg2)
{
	obj_kaitlyn_warp_school.warptoschool = true;
	global.slowfade = true;
});
scribble_typists_add_event("warptoeden", function(arg0, arg1, arg2)
{
	obj_kaitlyn_warp_school.warptoeden = true;
	global.slowfade = true;
});
scribble_typists_add_event("warptooffice", function(arg0, arg1, arg2)
{
	obj_kaitlyn_warp_office.warptooffice = true;
	global.slowfade = true;
});
scribble_typists_add_event("officeparking", function(arg0, arg1, arg2)
{
	obj_blackscreen2.officeparking = true;
});
scribble_typists_add_event("officecont1", function(arg0, arg1, arg2)
{
	obj_office_lot.officecont1 = true;
});
scribble_typists_add_event("officecont2", function(arg0, arg1, arg2)
{
	obj_office_lot.officecont2 = true;
});
scribble_typists_add_event("officecont3", function(arg0, arg1, arg2)
{
	obj_office_lot.officecont3 = true;
});
scribble_typists_add_event("moneygive10", function(arg0, arg1, arg2)
{
	global.money += 10;
});
scribble_typists_add_event("lightfire", function(arg0, arg1, arg2)
{
	obj_cave_overlay.light = true;
});
scribble_typists_add_event("cardprog", function(arg0, arg1, arg2)
{
	global.cards_progress = 1;
});
scribble_typists_add_event("fireout", function(arg0, arg1, arg2)
{
	obj_cave_overlay.fadein = true;
});
scribble_typists_add_event("treefall", function(arg0, arg1, arg2)
{
	obj_cave_overlay.treefall = true;
});
scribble_typists_add_event("trip", function(arg0, arg1, arg2)
{
	obj_cave_overlay.trip = true;
});
scribble_typists_add_event("flashlight", function(arg0, arg1, arg2)
{
	obj_cave_overlay.flashlight = true;
});
scribble_typists_add_event("pullup", function(arg0, arg1, arg2)
{
	obj_cave_overlay.pullup = true;
});
scribble_typists_add_event("skycleaver", function(arg0, arg1, arg2)
{
	obj_cave_overlay.skycleaver = true;
});
scribble_typists_add_event("unskip", function(arg0, arg1, arg2)
{
	unskip = true;
});
scribble_typists_add_event("fannypack", function(arg0, arg1, arg2)
{
	audio_play_sound(snd_fannypack, 1, false);
});
scribble_typists_add_event("present", function(arg0, arg1, arg2)
{
	obj_cave_overlay.present = true;
});
scribble_typists_add_event("riser", function(arg0, arg1, arg2)
{
	audio_play_sound(snd_exit, 1, false);
	obj_whiteoverlay.fadein = true;
});
scribble_typists_add_event("stormstart", function(arg0, arg1, arg2)
{
	audio_play_sound(snd_rain, 1, true);
	audio_sound_gain(snd_rain, 0, 0);
	audio_sound_gain(snd_rain, 0.5, 6000);
	audio_play_sound(snd_rain_inside, 1, true);
	audio_sound_gain(snd_rain_inside, 0, 0);
});
scribble_typists_add_event("stormpickup", function(arg0, arg1, arg2)
{
	audio_sound_gain(snd_rain, 0.7, 4000);
	audio_sound_gain(snd_wind_ambience, 0.7, 6000);
});
