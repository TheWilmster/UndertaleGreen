randomize();
if (hp > 0)
{
	if (atk_choice == -1)
	{
		if (prev_choice == 5)
			global.random_atk = true;
	}
	if (global.random_atk == true)
	{
		atk_choice = atk_list[0];
		array_delete(atk_list, 0, 1);
		array_push(atk_list, atk_choice);
		prev_choice = atk_choice;
	}
	if (global.random_atk == false)
	{
		atk_choice = prev_choice + 1;
		prev_choice = atk_choice;
	}
	if (global.eden_first_time == true)
	{
		if (hp == maxhp)
			atk_choice = 101;
		else
			atk_choice = 100;
		prev_choice = 0;
	}
	if (atk_choice != 101)
		battle_msg += 1;
	if (battle_msg == 8)
		battle_msg = 2;
	if (battle_msg == 1)
	{
		global.battle_start_msg = "* Eden moves one space closer!";
		global.battle_start_msg_esp = "* ¡Eden avanza un casilla!";
	}
	if (battle_msg == 2)
	{
		global.battle_start_msg = "* Smells like free labor.";
		global.battle_start_msg_esp = "* Huele a trabajo forzado.";
	}
	if (battle_msg == 3)
	{
		global.battle_start_msg = "* Eden discusses the historical\n  significance of her next attack.";
		global.battle_start_msg_esp = "* Eden discute la relevancia\n  histórica del siguiente ataque.";
	}
	if (battle_msg == 4)
	{
		global.battle_start_msg = "* Eden frantically flips through\n  her joke book.";
		global.battle_start_msg_esp = "* Eden mira de arriba\n  a abajo su libro.";
	}
	if (battle_msg == 5)
	{
		global.battle_start_msg = "* Eden is running out of\n  imaginary weapons.";
		global.battle_start_msg_esp = "* A Eden se le acaban\n  las ideas para sus ataques.";
	}
	if (battle_msg == 6)
	{
		global.battle_start_msg = "* You still don't understand\n  what a serf is.";
		global.battle_start_msg_esp = "* Sigues sin entender lo que\n  es un siervo.";
	}
	if (battle_msg == 7)
	{
		global.battle_start_msg = "* Eden secretly wishes she was\n  the queen.";
		global.battle_start_msg_esp = "* Eden se dice a sí misma que\n le hubiera gustado ser la reina.";
	}
	if (battle_msg == 10 || battle_msg == 9)
	{
		global.battle_start_msg = "[delay,1000]";
		global.battle_start_msg_esp = "[delay,1000]";
	}
	if (atk_choice == 101)
	{
		global.battle_start_msg = "* Eden waits patiently for you\n  to attack her.";
		global.battle_start_msg_esp = "* Eden espera pacientemente a\n  que muevas primero.";
	}
	switch (atk_choice)
	{
		case 2:
			battle_box(175, 200, undefined, -60);
			if (global.random_atk == false)
			{
				DIALOG[0] = "[battleface,eden,joyous][c_black]Very impressive,\n[freeze][delay,333][continue]young bishop![/page]";
				DIALOG[1] = "[battleface,eden,sly][c_black]But are you fast\nenough to dodge\nmy spear?";
				DIALOG_ESP[0] = "[battleface,eden,joyous][c_black]¡Impresionante,\n[freeze][delay,333][continue]joven alfil![/page]";
				DIALOG_ESP[1] = "[battleface,eden,sly][c_black]Pero eres lo\nsuficientemente veloz\npara esquivar mi\nlanza ?";
			}
			break;
		case 1:
			battle_box(200, 200, undefined, -60);
			if (global.random_atk == false)
			{
				DIALOG[0] = "[battleface,eden,normal][c_black]If a pebble wasn't\ngood enough,[freeze][delay,333][continue] how\nabout a rock![/page]";
				DIALOG[1] = "[battleface,eden,sly][c_black]Wouldn't that be\ngneiss?[/page]";
				DIALOG[2] = "[battleface,eden,sly][c_black]...[/page]";
				DIALOG[3] = "[battleface,eden,tweakin][c_black]Doesn't actually\nwork when you\nsay it out loud...";
				DIALOG_ESP[0] = "[battleface,eden,normal][c_black]Si un plebeyo no\n es suficiente,[freeze][delay,333][continue] ¡Qué\npiensas de una roca![/page]";
				DIALOG_ESP[1] = "[battleface,eden,sly][c_black]¿No sería\ngem-ial?[/page]";
				DIALOG_ESP[2] = "[battleface,eden,sly][c_black]...[/page]";
				DIALOG_ESP[3] = "[battleface,eden,tweakin][c_black]No suena bien\ncuando una lo dice\nen voz alta...";
			}
			break;
		case 3:
			battle_box(150, 200, undefined, -60);
			if (global.random_atk == false)
			{
				DIALOG[0] = "[battleface,eden,normal][c_black]Witness a working\nwoman's power![freeze][delay,333][continue] Bow\ndown to my scythe!";
				DIALOG_ESP[0] = "[battleface,eden,normal][c_black]¡Presencia el poder\nde una campesina![freeze][delay,333][continue] Arrodíllate\nante mi guadaña!";
			}
			break;
		case 4:
			battle_box(225, 200, undefined, -60);
			if (global.random_atk == false)
			{
				DIALOG[0] = "[battleface,eden,joyous][c_black]Impressive dodging\nthose scythes![/page]";
				DIALOG[1] = "[battleface,eden,sly][c_black]But can you handle\nmy lute's\near-splitting\nchords?";
				DIALOG_ESP[0] = "[battleface,eden,joyous][c_black]¡Increíble manera de\nesquivar las guadañas![/page]";
				DIALOG_ESP[1] = "[battleface,eden,sly][c_black]¿Pero puedes\naguantar los\narpegios de mi\nlaúd?";
			}
			break;
		case 5:
			battle_box(250, 200, undefined, -60);
			if (global.random_atk == false)
			{
				DIALOG[0] = "[battleface,eden,normal][c_black]I'll end this\nbattle in a serf's\nfavorite arena![freeze][delay,333][continue] The\ntavern![/page]";
				DIALOG[1] = "[battleface,eden,joyous][c_black]See,[freeze][delay,333][continue] commoners\nwould often come\nhere to drink...[/page]";
				DIALOG[2] = "[battleface,eden,tweakin][c_black]Umm...[/page]";
				DIALOG[3] = "[battleface,eden,joyous][c_black]To drink soda!";
				DIALOG_ESP[0] = "[battleface,eden,normal][c_black]¡Voy a terminar\nesta batalla en el\nlugar favorito de\nun siervo![freeze][delay,333][continue] ¡La\ntaverna![/page]";
				DIALOG_ESP[1] = "[battleface,eden,joyous][c_black]De hecho,[freeze][delay,333][continue] la gente\nde la época venía\naquí para beber...[/page]";
				DIALOG_ESP[2] = "[battleface,eden,tweakin][c_black]Ehh...[/page]";
				DIALOG_ESP[3] = "[battleface,eden,joyous][c_black]¡Para beber refrescos!";
			}
			break;
		case 100:
			battle_box(200, 200, undefined, -60);
			DIALOG[0] = "[battleface,eden,joyous][c_black]Good job Olive![freeze][delay,333][continue]\nThat really hurt.[/page]";
			DIALOG[1] = "[battleface,eden,straight][c_black]...Uhh.[/page]";
			DIALOG[2] = "[c_black]So what do-[/page]";
			DIALOG[3] = "[battleface,eden,tweakin][c_black]What should I do\nnow?[/page]";
			DIALOG[4] = "[battleface,eden,normal][c_black]...Oh,[freeze][delay,333][continue] I see![/page]";
			DIALOG[5] = "[c_black]I can fight back.[freeze][delay,333][continue]\nI'll hit you\nwith everything\nI've got!";
			DIALOG_ESP[0] = "[battleface,eden,joyous][c_black]¡Buena maña Olive![freeze][delay,333][continue]\n¡Eso me ha dolido!.[/page]";
			DIALOG_ESP[1] = "[battleface,eden,straight][c_black]...Ehh.[/page]";
			DIALOG_ESP[2] = "[c_black]¿Qué debería-[/page]";
			DIALOG_ESP[3] = "[battleface,eden,tweakin][c_black]¿Qué debería hacer\nahora?[/page]";
			DIALOG_ESP[4] = "[battleface,eden,normal][c_black]...Ah,[freeze][delay,333][continue] ¡Ya lo sé![/page]";
			DIALOG_ESP[5] = "[c_black]¡Ahora es mi turno!.[freeze][delay,333][continue]\n¡Daré todo lo que\npueda para derrotarte!";
			break;
		case 101:
			battle_box(200, 200, undefined, -60);
			if (misscount == 0)
			{
				DIALOG[0] = "[battleface,eden,straight][c_black]So did that hit\nme,[freeze][delay,333][continue] or...?[/page]";
				DIALOG[1] = "[battleface,eden,tweakin][c_black]Oh,[freeze][delay,333][continue] you want\nanother try?[/page]";
				DIALOG[2] = "[battleface,eden,joyous][c_black]Go ahead!";
				DIALOG_ESP[0] = "[battleface,eden,straight][c_black]¿Se supone que eso\nme ha dado,[freeze][delay,333][continue] o...?[/page]";
				DIALOG_ESP[1] = "[battleface,eden,tweakin][c_black]Ah,[freeze][delay,333][continue] ¿necesitas\n otro intento?[/page]";
				DIALOG_ESP[2] = "[battleface,eden,joyous][c_black]¡Venga,[freeze][delay,333][continue] tú puedes!";
			}
			if (misscount == 1)
			{
				DIALOG[0] = "[battleface,eden,straight][c_black]Still need another\ntry?[/page]";
				DIALOG[1] = "[battleface,eden,joyous][c_black]That's okay![freeze][delay,333][continue]\nI believe in you!";
				DIALOG_ESP[0] = "[battleface,eden,straight][c_black]Sigues necesitando\nmás intentos?[/page]";
				DIALOG_ESP[1] = "[battleface,eden,joyous][c_black]¡No te preocupes![freeze][delay,333][continue]\n¡Confío en tí!";
			}
			if (misscount == 2)
			{
				DIALOG[0] = "[battleface,eden,tweakin][c_black]...[freeze][delay,333][continue]You okay,[freeze][delay,333][continue] Olive?[/page]";
				DIALOG[1] = "[battleface,eden,joyous][c_black]I mean,[freeze][delay,333][continue] take\nyour time! It's\nyour game anyways!";
			}
			if (misscount >= 3)
				DIALOG[0] = "[battleface,eden,tweakin][c_black]...";
			break;
	}
}
else
{
	global.school_time_sequence = 1;
	audio_stop_sound(mus_pawn_eden);
	DIALOG[0] = "[battleface,eden,hurt][c_black]You won,[delay,333] brave\nbishop.[/page]";
	DIALOG[1] = "[battleface,eden,joyous][c_black]I can rest with\nhonor knowing that\nmy last moments\nwere fighting a\nnoble hero.[battle_end]";
	DIALOG_ESP[0] = "[battleface,eden,hurt][c_black]Has ganado,[delay,333] valiente\n alfil.[/page]";
	DIALOG_ESP[1] = "[battleface,eden,joyous][c_black]Puedo irme\nen paz sabiendo\nque mis últimos\nmomentos fueron luchando\ncontra un noble héroe.[battle_end]";
}
instance_create_depth(x + spr_w, y - spr_h, depth - 1, obj_enemy_text);
