if (obj_textboxNEW.choice == 0)
{
	DIALOG[0] = "[character,none,-1]* You took the coins.";
	DIALOG_ESP[0] = "[character,none,-1]* Has agarrado las monedas.";
	global.money += 8;
	audio_play_sound(snd_item, 1, false);
	global.second_dia[8] = 1;
}
else
{
	DIALOG[0] = "[character,none,-1]* You left the coins behind.";
	DIALOG_ESP[0] = "[character,none,-1]* Has dejado las monedas atrás.";
}
show_debug_message(DIALOG);
