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
				global.msg[0] = "[battleface,eden,joyous][c_black]Very impressive,\n[freeze][delay,333][continue]young bishop![/page]";
				global.msg[1] = "[battleface,eden,sly][c_black]But are you fast\nenough to dodge\nmy spear?";
				global.msg_esp[0] = "[battleface,eden,joyous][c_black]¡Impresionante,\n[freeze][delay,333][continue]joven alfil![/page]";
				global.msg_esp[1] = "[battleface,eden,sly][c_black]Pero eres lo\nsuficientemente veloz\npara esquivar mi\nlanza ?";
			}
			break;
		case 1:
			battle_box(200, 200, undefined, -60);
			if (global.random_atk == false)
			{
				global.msg[0] = "[battleface,eden,normal][c_black]If a pebble wasn't\ngood enough,[freeze][delay,333][continue] how\nabout a rock![/page]";
				global.msg[1] = "[battleface,eden,sly][c_black]Wouldn't that be\ngneiss?[/page]";
				global.msg[2] = "[battleface,eden,sly][c_black]...[/page]";
				global.msg[3] = "[battleface,eden,tweakin][c_black]Doesn't actually\nwork when you\nsay it out loud...";
				global.msg_esp[0] = "[battleface,eden,normal][c_black]Si un plebeyo no\n es suficiente,[freeze][delay,333][continue] ¡Qué\npiensas de una roca![/page]";
				global.msg_esp[1] = "[battleface,eden,sly][c_black]¿No sería\ngem-ial?[/page]";
				global.msg_esp[2] = "[battleface,eden,sly][c_black]...[/page]";
				global.msg_esp[3] = "[battleface,eden,tweakin][c_black]No suena bien\ncuando una lo dice\nen voz alta...";
			}
			break;
		case 3:
			battle_box(150, 200, undefined, -60);
			if (global.random_atk == false)
			{
				global.msg[0] = "[battleface,eden,normal][c_black]Witness a working\nwoman's power![freeze][delay,333][continue] Bow\ndown to my scythe!";
				global.msg_esp[0] = "[battleface,eden,normal][c_black]¡Presencia el poder\nde una campesina![freeze][delay,333][continue] Arrodíllate\nante mi guadaña!";
			}
			break;
		case 4:
			battle_box(225, 200, undefined, -60);
			if (global.random_atk == false)
			{
				global.msg[0] = "[battleface,eden,joyous][c_black]Impressive dodging\nthose scythes![/page]";
				global.msg[1] = "[battleface,eden,sly][c_black]But can you handle\nmy lute's\near-splitting\nchords?";
				global.msg_esp[0] = "[battleface,eden,joyous][c_black]¡Increíble manera de\nesquivar las guadañas![/page]";
				global.msg_esp[1] = "[battleface,eden,sly][c_black]¿Pero puedes\naguantar los\narpegios de mi\nlaúd?";
			}
			break;
		case 5:
			battle_box(250, 200, undefined, -60);
			if (global.random_atk == false)
			{
				global.msg[0] = "[battleface,eden,normal][c_black]I'll end this\nbattle in a serf's\nfavorite arena![freeze][delay,333][continue] The\ntavern![/page]";
				global.msg[1] = "[battleface,eden,joyous][c_black]See,[freeze][delay,333][continue] commoners\nwould often come\nhere to drink...[/page]";
				global.msg[2] = "[battleface,eden,tweakin][c_black]Umm...[/page]";
				global.msg[3] = "[battleface,eden,joyous][c_black]To drink soda!";
				global.msg_esp[0] = "[battleface,eden,normal][c_black]¡Voy a terminar\nesta batalla en el\nlugar favorito de\nun siervo![freeze][delay,333][continue] ¡La\ntaverna![/page]";
				global.msg_esp[1] = "[battleface,eden,joyous][c_black]De hecho,[freeze][delay,333][continue] la gente\nde la época venía\naquí para beber...[/page]";
				global.msg_esp[2] = "[battleface,eden,tweakin][c_black]Ehh...[/page]";
				global.msg_esp[3] = "[battleface,eden,joyous][c_black]¡Para beber refrescos!";
			}
			break;
		case 100:
			battle_box(200, 200, undefined, -60);
			global.msg[0] = "[battleface,eden,joyous][c_black]Good job Olive![freeze][delay,333][continue]\nThat really hurt.[/page]";
			global.msg[1] = "[battleface,eden,straight][c_black]...Uhh.[/page]";
			global.msg[2] = "[c_black]So what do-[/page]";
			global.msg[3] = "[battleface,eden,tweakin][c_black]What should I do\nnow?[/page]";
			global.msg[4] = "[battleface,eden,normal][c_black]...Oh,[freeze][delay,333][continue] I see![/page]";
			global.msg[5] = "[c_black]I can fight back.[freeze][delay,333][continue]\nI'll hit you\nwith everything\nI've got!";
			global.msg_esp[0] = "[battleface,eden,joyous][c_black]¡Buena maña Olive![freeze][delay,333][continue]\n¡Eso me ha dolido!.[/page]";
			global.msg_esp[1] = "[battleface,eden,straight][c_black]...Ehh.[/page]";
			global.msg_esp[2] = "[c_black]¿Qué debería-[/page]";
			global.msg_esp[3] = "[battleface,eden,tweakin][c_black]¿Qué debería hacer\nahora?[/page]";
			global.msg_esp[4] = "[battleface,eden,normal][c_black]...Ah,[freeze][delay,333][continue] ¡Ya lo sé![/page]";
			global.msg_esp[5] = "[c_black]¡Ahora es mi turno!.[freeze][delay,333][continue]\n¡Daré todo lo que\npueda para derrotarte!";
			break;
		case 101:
			battle_box(200, 200, undefined, -60);
			if (misscount == 0)
			{
				global.msg[0] = "[battleface,eden,straight][c_black]So did that hit\nme,[freeze][delay,333][continue] or...?[/page]";
				global.msg[1] = "[battleface,eden,tweakin][c_black]Oh,[freeze][delay,333][continue] you want\nanother try?[/page]";
				global.msg[2] = "[battleface,eden,joyous][c_black]Go ahead!";
				global.msg_esp[0] = "[battleface,eden,straight][c_black]¿Se supone que eso\nme ha dado,[freeze][delay,333][continue] o...?[/page]";
				global.msg_esp[1] = "[battleface,eden,tweakin][c_black]Ah,[freeze][delay,333][continue] ¿necesitas\n otro intento?[/page]";
				global.msg_esp[2] = "[battleface,eden,joyous][c_black]¡Venga,[freeze][delay,333][continue] tú puedes!";
			}
			if (misscount == 1)
			{
				global.msg[0] = "[battleface,eden,straight][c_black]Still need another\ntry?[/page]";
				global.msg[1] = "[battleface,eden,joyous][c_black]That's okay![freeze][delay,333][continue]\nI believe in you!";
				global.msg_esp[0] = "[battleface,eden,straight][c_black]Sigues necesitando\nmás intentos?[/page]";
				global.msg_esp[1] = "[battleface,eden,joyous][c_black]¡No te preocupes![freeze][delay,333][continue]\n¡Confío en tí!";
			}
			if (misscount == 2)
			{
				global.msg[0] = "[battleface,eden,tweakin][c_black]...[freeze][delay,333][continue]You okay,[freeze][delay,333][continue] Olive?[/page]";
				global.msg[1] = "[battleface,eden,joyous][c_black]I mean,[freeze][delay,333][continue] take\nyour time! It's\nyour game anyways!";
			}
			if (misscount >= 3)
				global.msg[0] = "[battleface,eden,tweakin][c_black]...";
			break;
	}
}
else
{
	global.school_time_sequence = 1;
	audio_stop_sound(mus_pawn_eden);
	global.msg[0] = "[battleface,eden,hurt][c_black]You won,[delay,333] brave\nbishop.[/page]";
	global.msg[1] = "[battleface,eden,joyous][c_black]I can rest with\nhonor knowing that\nmy last moments\nwere fighting a\nnoble hero.[battle_end]";
	global.msg_esp[0] = "[battleface,eden,hurt][c_black]Has ganado,[delay,333] valiente\n alfil.[/page]";
	global.msg_esp[1] = "[battleface,eden,joyous][c_black]Puedo irme\nen paz sabiendo\nque mis últimos\nmomentos fueron luchando\ncontra un noble héroe.[battle_end]";
}
instance_create_depth(x + spr_w, y - spr_h, depth - 1, obj_enemy_text);
