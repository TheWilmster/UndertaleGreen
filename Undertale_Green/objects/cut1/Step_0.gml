if (global.cutscene_gray_eden_triggered == true)
	obj_player.curr_state = PlayerState.INTERACT;
if (global.cut1dia1 == true)
{
	audio_stop_sound(mus_art_center);
	audio_stop_sound(mus_greenroom);
	audio_stop_sound(mus_greenroom_lp);
	audio_stop_sound(mus_pitorch);
	audio_stop_sound(mus_pitorch_lp);
	audio_sound_gain(mus_art_center, 1, 0);
	if (!audio_is_playing(mus_eden))
		audio_play_sound(mus_eden, 1, true);
	global.cut1dia1 = false;
	progress = -1;
	timer = -1;
	global.msg[0] = "[character,gray,summin][delay,1]* ...No,[freeze][delay,333][continue] hey,[freeze][delay,333][continue] I just\n  didn't know.[/page]";
	global.msg[1] = "[character,eden,tweakin][delay,1]* Didn't know?[/page]";
	global.msg[2] = "[character,gray,smug][owsprite,gray,smug][delay,1]* That I was dating a\n  chicken.[/page]";
	global.msg[3] = "[character,eden,buggin][owsprite,eden,shocked][delay,1]* What?[/page]";
	global.msg[4] = "[character,gray,happy][delay,1]* Yeah,[freeze][delay,333][continue] I'm not happy\n  about it either.[/page]";
	global.msg[5] = "[character,gray,happy][delay,1]* Has some pretty weird\n  implications.[/page]";
	global.msg[6] = "[character,eden,lockedin][delay,1][owsprite,eden,unammused]* Oh,[freeze][delay,333][continue] so I'm a chicken\n  for not wanting to get\n  mauled in a forest.[/page]";
	global.msg[7] = "[character,eden,lockedin][delay,1]* On a mountain.[/page]";
	global.msg[8] = "[character,eden,cluckin][delay,1][owsprite,eden,tweakin]* If that makes me a\n  chicken,[freeze][delay,333][continue] I'll get to\n  clucking.[/page]";
	global.msg[9] = "[character,gray,condescending][delay,1][owsprite,gray,default]* Eden,[freeze][delay,333][continue] you know there\n  aren't actually monsters\n  on Ebott,[freeze][delay,333][continue] right?[/page]";
	global.msg[10] = "[character,gray,condescending][delay,1][owsprite,gray,smug][owsprite,eden,default]* It's just a fairytale \n  Chai's grandpa made \n  up to scare competition.[/page]";
	global.msg[11] = "[character,eden,lockedin][delay,1][owsprite,gray,default][owsprite,eden,unammused]* Well if there aren't\n  any monsters,[freeze][delay,333][continue] why do you\n  insist on going?[/page]";
	global.msg[12] = "[character,eden,lockedin][delay,1]* Are you just that eager\n  to throw your life away?[/page]";
	global.msg[13] = "[character,gray,smug][delay,1][owsprite,gray,smug]* Yours too.[/page]";
	global.msg[14] = "[character,gray,smug][delay,1]* We're both going up\n  there so we're both\n  goners if I'm wrong.[/page]";
	global.msg[15] = "[character,eden,angry][delay,1]* Very reassuring,[freeze][delay,333][continue]\n  jerk-face.[/page]";
	global.msg[16] = "[character,eden,angry][delay,1]* You know you could\n  at least TRY convincing\n  me.[advance]";
	global.msg_esp[0] = "[character,gray,summin][delay,1]* ...No,[freeze][delay,333][continue] oye,[freeze][delay,333][continue] simplemente\n  no sabía...[/page]";
	global.msg_esp[1] = "[character,eden,tweakin][delay,1]* ¿...No sabías?[/page]";
	global.msg_esp[2] = "[character,gray,smug][owsprite,gray,smug][delay,1]* Que estaba saliendo con\n  una gallina.[/page]";
	global.msg_esp[3] = "[character,eden,buggin][owsprite,eden,shocked][delay,1]* ¿Qué?[/page]";
	global.msg_esp[4] = "[character,gray,happy][delay,1]* Sí, sí, [freeze][delay,333][continue]a mí tampoco es\n  que me entusiasme.[/page]";
	global.msg_esp[5] = "[character,gray,happy][delay,1]* Tiene implicaciones\n  algo... [freeze][delay,333][continue]raras.[/page]";
	global.msg_esp[6] = "[character,eden,lockedin][delay,1][owsprite,eden,unammused]* Oh,[freeze][delay,333][continue] ¿con lo que soy una\n  gallina por no querer\n  ir a un bosque... [/page]";
	global.msg_esp[7] = "[character,eden,lockedin][delay,1][owsprite,eden,unammused]* ...sumamente tenebroso?[/page]";
	global.msg_esp[8] = "[character,eden,lockedin][delay,1]* En una montaña.[/page]";
	global.msg_esp[9] = "[character,eden,cluckin][delay,1][owsprite,eden,tweakin]* Si eso me hace ser una\n  gallina,[freeze][delay,333][continue] mejor empiezo\n  a cacarear.[/page]";
	global.msg_esp[10] = "[character,gray,condescending][delay,1][owsprite,gray,default]* Eden,[freeze][delay,333][continue] tú sabes que no\n  hay monstruos en el\n  monte Ebott,[freeze][delay,333][continue] ¿...verdad?[/page]";
	global.msg_esp[11] = "[character,gray,condescending][delay,1][owsprite,gray,smug][owsprite,eden,default]* Es solo un cuento de\n  hadas inventado por el\n  abuelo de Chai para...[/page]";
	global.msg_esp[12] = "[character,gray,condescending][delay,1][owsprite,gray,smug][owsprite,eden,default]* ...asustar a la\n  competencia.[/page]";
	global.msg_esp[13] = "[character,eden,lockedin][delay,1][owsprite,gray,default][owsprite,eden,unammused]* Entonces si no hay\n  ningún monstruo,\n[freeze][delay,333][continue]  ¿por qué insistes...[/page]";
	global.msg_esp[14] = "[character,eden,lockedin][delay,1][owsprite,gray,default][owsprite,eden,unammused]* ...en ir?[/page]";
	global.msg_esp[15] = "[character,eden,lockedin][delay,1]* ¿Te gustaría perder tu\n  vida,[freeze][delay,333][continue] o algo?[/page]";
	global.msg_esp[16] = "[character,gray,smug][delay,1][owsprite,gray,smug]* Tú también la perderías.[/page]";
	global.msg_esp[17] = "[character,gray,smug][delay,1]* Si voy,[freeze][delay,333][continue] vas tú también,[freeze][delay,333][continue]\n  con lo que los dos\n  moriríamos si me...[/page]";
	global.msg_esp[18] = "[character,gray,smug][delay,1]* ...equivoco.[/page]";
	global.msg_esp[19] = "[character,eden,angry][delay,1]* Muy tranquilizador,[freeze][delay,333][continue]\n  idiota.[/page]";
	global.msg_esp[20] = "[character,eden,angry][delay,1]* A lo mejor podrías\n  INTENTAR convencerme,[freeze][delay,333][continue]\n  ¿no crees?[advance]";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
if (global.advance_cutscene == true && !instance_exists(obj_textboxNEW))
{
	if (!audio_is_playing(snd_notif))
		audio_play_sound(snd_notif, 1, false);
	alarm_set(0, 20);
	alarm_set(1, 34);
	alarm_set(2, 60);
	global.advance_cutscene = false;
}
if (global.advance_cutscene2 == true && !instance_exists(obj_textboxNEW))
{
	obj_gray.depth = -bbox_bottom;
	obj_gray.hspeed = 5;
	obj_gray.sprite_index = spr_gray_wl;
	obj_gray.image_speed = 0.25;
	alarm_set(3, 45);
	global.advance_cutscene2 = false;
}
if (global.cutscene_battle_start == true && !instance_exists(obj_textboxNEW))
{
	if (global.eden_first_time == true)
	{
		if (global.language == 0)
			battle_setup("* Eden wants you to make the\n  first move.");
		else
			battle_setup("* Eden wants you to make the\n  first move.");
	}
	else if (global.language == 0)
	{
		battle_setup("* Eden moves one space closer!");
	}
	else
	{
		battle_setup("* ¡Eden avanza un casilla!");
	}
	instance_create_depth(0, 0, depth, obj_battle_transition);
	global.eden_battle_started = true;
	global.cutscene_battle_start = false;
}
if (global.eden_theme == true && !instance_exists(obj_textboxNEW))
{
	audio_stop_sound(mus_eden);
	start_play_music();
	global.eden_theme = false;
}
if (edenleave == true && !instance_exists(obj_textboxNEW))
{
	instance_create_depth(0, 0, -9999, obj_transition_screen);
	edenleave = false;
}
if (global.helmet_unlock3 == true && !instance_exists(obj_textboxNEW))
{
	obj_player.curr_state = PlayerState.INTERACT;
	obj_yeti_girl_3.image_index = 1;
	alarm_set(5, 30);
	audio_play_sound(snd_item, 1, false);
	global.helmet_unlock3 = false;
}
if (global.helmet_prompt3 == true && !instance_exists(obj_textboxNEW))
{
	instance_create_depth(x, y, -9999, obj_menu);
	obj_menu.item_list_prompt = true;
	obj_menu.current_menu = 1;
	obj_menu.text_offset = 40;
	obj_player.curr_state = PlayerState.MENU;
	global.helmet_prompt3 = false;
}
