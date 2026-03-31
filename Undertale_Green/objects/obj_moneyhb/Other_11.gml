if (room == rm_greenroom)
{
	if (obj_textboxNEW.choice == 0)
	{
		global.msg[0] = "[character,none,-1][delay,1]* (You are now 5 coins richer.)";
		global.msg_esp[0] = "[character,none,-1][delay,1]* (Acabas de ascender en la\n  escalera del capitalismo.)";
		global.money += 5;
		global.lootdrops[0] = 0;
		audio_play_sound(snd_item, 1, false);
	}
	else
	{
		global.msg[0] = "[character,none,-1][delay,1]* (You decide you don't want\n  free money.)";
		global.msg_esp[0] = "[character,none,-1][delay,1]* (decides que no quieres dinero\n  GRATIS.)";
	}
}
if (room == rm_hallway1)
{
	if (obj_textboxNEW.choice == 0)
	{
		global.msg[0] = "[character,none,-1][delay,1]* (You pick up the coins.)";
		global.msg_esp[0] = "[character,none,-1][delay,1]* (Te agachas a por las monedas.)";
		global.money += 3;
		global.lootdrops[1] = 0;
		visible = false;
		audio_play_sound(snd_item, 1, false);
		instance_destroy(self);
	}
	else
	{
		global.msg[0] = "[character,none,-1][delay,1]* (Someone else will come by for\n  it.)";
		global.msg_esp[0] = "[character,none,-1][delay,1]* (Alguién más vendrá\n  a buscarlas.)";
	}
}
if (room == rm_vent3)
{
	if (obj_textboxNEW.choice == 0)
	{
		global.msg[0] = "[character,none,-1][delay,1]* (You pick up the coins.)";
		global.msg_esp[0] = "[character,none,-1][delay,1]* (Tomas la importante decisión de\n  ganar dinero.)";
		global.money += 6;
		global.lootdrops[2] = 0;
		visible = false;
		audio_play_sound(snd_item, 1, false);
		instance_destroy(self);
	}
	else
	{
		global.msg[0] = "[character,none,-1][delay,1]* (The rats can keep them.)";
		global.msg_esp[0] = "[character,none,-1][delay,1]* (Mejor dejar la propina a las ratas.)";
	}
}
if (room == rm_basement)
{
	if (obj_textboxNEW.choice == 0)
	{
		global.msg[0] = "[character,none,-1][delay,1]* (The coins now sit reluctantly\n  beside one another in your\n  pocket.)";
		global.msg_esp[0] = "[character,none,-1][delay,1]* (Las monedas no tienen más\n  remedio que meterse a \n  escarmientos en tu bolsillo.)";
		global.money += 3;
		global.lootdrops[3] = 0;
		visible = false;
		audio_play_sound(snd_item, 1, false);
		instance_destroy(self);
	}
	else
	{
		global.msg[0] = "[character,none,-1][delay,1]* (You leave them to their\n  peace.)";
		global.msg_esp[0] = "[character,none,-1][delay,1]* (Las dejas vivir sus vidas\n  monediles en paz.)";
	}
}
