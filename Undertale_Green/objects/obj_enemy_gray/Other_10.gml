randomize();
if (hp > 0)
{
	if (atk_choice == -1)
		battle_image = spr_enemy_gray_head;
	if (prev_choice == 7)
		global.random_atk = true;
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
	battle_msg += 1;
	if (battle_msg == 8)
		battle_msg = 1;
	if (battle_msg == 1)
	{
		global.battle_start_msg = "* Gray admires how cool his sword\n  looks.";
		global.battle_start_msg_esp = "* Gray admira el aspecto\n  de su espada.";
	}
	if (battle_msg == 2)
	{
		global.battle_start_msg = "* Gray wants to walk around but\n  his armor is too heavy.";
		global.battle_start_msg_esp = "* Gray se quiere mover,[freeze][delay,333][continue] pero\n  su armadura es muy pesada.";
	}
	if (battle_msg == 3)
	{
		global.battle_start_msg = "* You wish Gray knew your name.";
		global.battle_start_msg_esp = "* Desearías que Gray supiera tu\n  nombre.";
	}
	if (battle_msg == 4)
	{
		global.battle_start_msg = "* Smells like bronze and\n  hairspray.";
		global.battle_start_msg_esp = "* Huele a bronceador y a\n  laca para cabellos.";
	}
	if (battle_msg == 5)
	{
		global.battle_start_msg = "* Gray is considering joining the\n  school's fencing club.";
		global.battle_start_msg_esp = "* Gray está considerando unirse\n  al club escolar de esgrima.";
	}
	if (battle_msg == 6)
	{
		global.battle_start_msg = "* Gray forgot his intention to\n  let you win.";
		global.battle_start_msg_esp = "* A Gray se le ha olvidado\n  que te iba a dejar ganar.";
	}
	if (battle_msg == 7)
	{
		global.battle_start_msg = "* Gray wonders which chess piece\n  you gave Eden.";
		global.battle_start_msg_esp = "* Gray se pregunta qué pieza\n  le diste a Eden.";
	}
	switch (atk_choice)
	{
		case 3:
			battle_box(175, 200, undefined, -60);
			global.msg[0] = "[battleface,gray,smug][c_black]I bet you think\nit's all swords\nand spears for\nknights.[/page]";
			global.msg[1] = "[battleface,gray,smug][c_black]Well,[freeze][delay,333][continue] I think\nthey also threw\naxes.[/page]";
			global.msg[2] = "[battleface,gray,summin][c_black]That or I'm\nsuing the arcade\nfor false\nadvertising.";
			global.msg_esp[0] = "[battleface,gray,smug][c_black]De seguro piensas\nque los caballeros\nsolo tenemos espadas\ny aspas.[/page]";
			global.msg_esp[1] = "[battleface,gray,smug][c_black]De hecho,[freeze][delay,333][continue] seguramente\ntambién lanzaban\nhachas.[/page]";
			global.msg_esp[2] = "[battleface,gray,summin][c_black]Eso,[freeze][delay,333][continue] o voy a\ndenunciar al\nrecre por\nfalsa publicidad.";
			break;
		case 6:
			battle_box(175, 200, undefined, -60);
			global.msg[0] = "[battleface,gray,normal][c_black]You dodged my\nshield too?[/page]";
			global.msg[1] = "[battleface,gray,smug][c_black]Probably feeling\npretty accomplished\nover there.[/page]";
			global.msg[2] = "[battleface,gray,normal][c_black]Good thing I shot\nthose arrows in\nthe sky before we\nstarted fighting.";
			global.msg_esp[0] = "[battleface,gray,normal][c_black]¿Has esquivado mi\nescudo también?[/page]";
			global.msg_esp[1] = "[battleface,gray,smug][c_black]Te debes sentir\nbastante bien\nahí donde estás.[/page]";
			global.msg_esp[2] = "[battleface,gray,normal][c_black]Menos mal que lancé\nesas flechas en el\naire antes de empezar\na pelear.";
			break;
		case 7:
			battle_box(275, 200, undefined, -60);
			global.msg[0] = "[battleface,gray,normal][c_black]I think it's\ntime I pull out\nmy best attack.[/page]";
			global.msg[1] = "[battleface,gray,normal][c_black]The one thing\nI know about\nknights is that\nthey slay dragons.[/page]";
			global.msg[2] = "[battleface,gray,smug][c_black]And I think\ndragons are too\ncool to slay.[/page]";
			global.msg[3] = "[battleface,gray,normal][c_black]That's why I keep\n'em as pets.";
			global.msg_esp[0] = "[battleface,gray,normal][c_black]Ya va siendo\nhora de que\nutilice mi mejor\nataque.[/page]";
			global.msg_esp[1] = "[battleface,gray,normal][c_black]Algo que sé\nseguro,[freeze][delay,333][continue] es que\nlos caballeros\nmataban dragones.[/page]";
			global.msg_esp[2] = "[battleface,gray,smug][c_black]Pero...[freeze][delay,333][continue] \npienso que los\ndragones molan mucho\ncomo para matarlos.[/page]";
			global.msg_esp[3] = "[battleface,gray,normal][c_black]Por eso los\ndomestico.";
			break;
		case 1:
			battle_box(175, 200, undefined, -60);
			global.msg[0] = "[battleface,gray,normal][c_black]How were Eden's\nattacks?[/page]";
			global.msg[1] = "[battleface,gray,summin][c_black]Knowing her,[freeze][delay,333][continue] I'll\nbet the only\nthing she\nweaponized was\nboredom.[/page]";
			global.msg[2] = "[battleface,gray,smug][c_black]Did you count\nhow many history\nlessons she\ncrammed in there?[/page]";
			global.msg[3] = "[battleface,gray,smug][c_black]Well watch and\nlearn,[freeze][delay,333][continue] little Chai.[/page]";
			global.msg[4] = "[battleface,gray,smug][c_black]I came here to\nwin.";
			global.msg_esp[0] = "[battleface,gray,normal][c_black]¿Cómo eran los\nataques de Eden?[/page]";
			global.msg_esp[1] = "[battleface,gray,summin][c_black]Conociéndola,[freeze][delay,333][continue] me\napuesto a que su\narma principal era\nel aburrimiento.[/page]";
			global.msg_esp[2] = "[battleface,gray,smug][c_black]¿Llevas acaso la\ncuenta de todas\nsus historietas?[/page]";
			global.msg_esp[3] = "[battleface,gray,smug][c_black]...Bueno.\nMira y aprende,[freeze][delay,333][continue]\nmini-Chai.[/page]";
			global.msg_esp[4] = "[battleface,gray,smug][c_black]¡Aquí se alza\nmi victoria!";
			break;
		case 2:
			battle_box(150, 200, undefined, -60);
			global.msg[0] = "[battleface,gray,normal][c_black]You survived,[freeze][delay,333][continue]\nhuh?[/page]";
			global.msg[1] = "[battleface,gray,normal][c_black]I'd expect nothing\nless from a\nbishop.[/page]";
			global.msg[2] = "[battleface,gray,normal][c_black]They are of course\nknown for their\nstrength.[freeze][delay,333][continue]\nAnd youth.[/page]";
			global.msg[3] = "[battleface,gray,smug][c_black]How about we\ntest that out?[/page]";
			global.msg[4] = "[battleface,gray,normal][c_black]Let's see how\nyour holiness\nfares in a\njousting match.";
			global.msg_esp[0] = "[battleface,gray,normal][c_black]Has sobrevivido,[freeze][delay,333][continue]\n¿eh?[/page]";
			global.msg_esp[1] = "[battleface,gray,normal][c_black]No espero nada\nmenos de un alfil.[/page]";
			global.msg_esp[2] = "[battleface,gray,normal][c_black]Obviamente son\nreconocidos por\nsu fuerza,[freeze][delay,333][continue]y\njuventud.[/page]";
			global.msg_esp[3] = "[battleface,gray,smug][c_black]¿Qué tal si lo\nlevamos a prueba?[/page]";
			global.msg_esp[4] = "[battleface,gray,normal][c_black]Veamos si tus rezos\nte hacen justicia\ncuando peleas.";
			break;
		case 4:
			battle_box(300, 200, undefined, -60);
			global.msg[0] = "[battleface,gray,summin][c_black]You're stronger\nthan I thought,[freeze][delay,333][continue]\nlittle Chai.[/page]";
			global.msg[1] = "[battleface,gray,consider][c_black]If we keep going\nlike this I'm\ngonna run out\nof ideas.[/page]";
			global.msg[2] = "[battleface,gray,normal][c_black]...[freeze][delay,333][continue]I mean attacks.[/page]";
			global.msg[3] = "[battleface,gray,smug][c_black]Looks like I\ngotta up my game.[freeze][delay,333][continue]\nGet ready for the\nultimate sword\nupgrade.";
			global.msg_esp[0] = "[battleface,gray,summin][c_black]Eres más fuerte\nde lo que pensaba,[freeze][delay,333][continue]\nmini-Chai.[/page]";
			global.msg_esp[1] = "[battleface,gray,consider][c_black]Si seguimos así\nme voy a quedar\nsin ideas.[/page]";
			global.msg_esp[2] = "[battleface,gray,normal][c_black]...[freeze][delay,333][continue]Digo,[freeze][delay,333][continue] ataques.[/page]";
			global.msg_esp[3] = "[battleface,gray,smug][c_black]Parece que tengo\nque ponerme las\npilas.[freeze][delay,333][continue] Prepárate\npara lo que se\nte viene encima.";
			break;
		case 5:
			battle_box(200, 200, undefined, -60);
			global.msg[0] = "[battleface,gray,smug][c_black]...Do I have a\nshield?[freeze][delay,333][continue] Little Chai,[freeze][delay,333][continue]\nplease.[/page]";
			global.msg[1] = "[battleface,gray,summin][c_black]People who use\nshields just suck\nat using swords.[/page]";
			global.msg[2] = "[battleface,gray,down][c_black]Actually,[freeze][delay,333][continue] that\ngave me an idea.";
			global.msg_esp[0] = "[battleface,gray,smug][c_black]¿...Que si tengo\nun escudo?,[freeze][delay,333][continue] mini-Chai,[freeze][delay,333][continue]\npor favor.[/page]";
			global.msg_esp[1] = "[battleface,gray,summin][c_black]Los que utilizan\nescudos apestan\nusando espadas.[/page]";
			global.msg_esp[2] = "[battleface,gray,down][c_black]De hecho,[freeze][delay,333][continue] eso me\nha dado una idea.";
			break;
	}
}
else
{
	global.school_time_sequence = 2;
	audio_stop_sound(mus_knight_gray);
	global.msg[0] = "[battleface,gray,surprised][c_black]You got me, little\nChai...[battle_end]";
	global.msg_esp[0] = "[battleface,gray,surprised][c_black]Me has ganado,\nmini-Chai...[battle_end]";
}
instance_create_depth(x + spr_w, y - spr_h, depth - 1, obj_enemy_text);
