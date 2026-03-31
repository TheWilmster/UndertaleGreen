if (global.second_dia[3] == 0)
{
	global.msg[0] = "[character,destiny,smile][delay,1]* Hey Olive.[freeze][delay,333][continue]\n* What's up?[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* (You ask Destiny what she did\n  with her hair.)[/page]";
	global.msg[2] = "[character,destiny,neutral][delay,1]* What,[freeze][delay,333][continue] you like the\n  blonde better?[/page]";
	global.msg[3] = "[character,destiny,neutral][delay,1]* ...[freeze][delay,333][continue]Yeah,[freeze][delay,333][continue] I do too.[/page]";
	global.msg[4] = "[character,destiny,neutral][delay,1]* It was your sister\n  that talked me into it.[/page]";
	global.msg[5] = "[character,destiny,neutral][delay,1]* Told me I'd look like\n  a cactus.[/page]";
	global.msg[6] = "[character,destiny,scared][delay,1]* Not sure why that\n  convinced me,[freeze][delay,333][continue] but for\n  some reason it worked.[/page]";
	global.msg[7] = "[character,destiny,smile][delay,1]* I feel all prickly\n  now.[/page]";
	global.msg[8] = "[character,destiny,smile][delay,1]* Do I look prickly to\n  you?[/page]";
	global.msg[9] = "[character,none,-1][delay,1]* (You tell her she's always\n  looked prickly.)[/page]";
	global.msg[10] = "[character,destiny,smug][delay,1]* Yeah,[freeze][delay,333][continue] that's me.[freeze][delay,333][continue]\n* Prickly and proud.";
	global.second_dia[3] = 1;
	global.save_photo = 9;
}
else if (global.second_dia[3] == 1)
{
	global.msg[0] = "[character,destiny,smile][delay,1]* So what are you up\n  to?[freeze][delay,333][continue]\n* Looking for Chai?[/page]";
	global.msg[1] = "[character,destiny,neutral][delay,1]* I'll be honest,[freeze][delay,333][continue] I have\n  no idea where that\n  girl is.[/page]";
	global.msg[2] = "[character,destiny,neutral][delay,1]* Probably sulking off\n  somewhere.[/page]";
	global.msg[3] = "[character,destiny,neutral][delay,1]* Think she's gotta go\n  up on Ebott to get\n  ingredients tonight.[/page]";
	global.msg[4] = "[character,destiny,smile][delay,1]* If it were me doing\n  all that labor,[freeze][delay,333][continue] I'd\n  just go on strike.[/page]";
	global.msg[5] = "[character,destiny,angry][delay,1]* Of course,[freeze][delay,333][continue] you know\n  how well your mom\n  would take that...[/page]";
	global.msg[6] = "[character,destiny,angry][delay,1]* Especially after...[/page]";
	global.msg[7] = "[character,destiny,scared][delay,1]* Uhh...[/page]";
	global.msg[8] = "[character,destiny,scared][delay,1]* ...[/page]";
	global.msg[9] = "[character,destiny,smile][delay,1]* Here's 1C.[freeze][delay,333][continue]\n* Go get yourself\n  something nice.[/page]";
	global.msg[10] = "[character,none,-1][delay,1][add1C]* (You got 1C.)[freeze][delay,333][continue]\n* (Perfect for getting out of\n  awkward conversations.)";
	global.msg_esp[0] = "[character,destiny,smile][delay,1]* ¿Qué estás tramando?[freeze][delay,333][continue]\n* ¿Buscando a tu hermana?[/page]";
	global.msg_esp[1] = "[character,destiny,neutral][delay,1]* Seré honesta,[freeze][delay,333][continue] no tengo idea\n  alguna de donde se ha\n  metido esa chavala.[/page]";
	global.msg_esp[2] = "[character,destiny,neutral][delay,1]* Probablemente está siendo\n  una quejona en,[freeze][delay,333][continue] eh...[freeze][delay,333][continue]\n  ¿quejonalandia...?[/page]";
	global.msg_esp[3] = "[character,destiny,neutral][delay,1]* Tiene que irse al\n  monte Ebott para recoger\n  ingredientes,[freeze][delay,333][continue] esta noche[/page]";
	global.msg_esp[4] = "[character,destiny,smug][delay,1]* Si me pusiera en sus\n  pies,[freeze][delay,333][continue] me replantaría\n  una huelga.[/page]";
	global.msg_esp[5] = "[character,destiny,angry][delay,1]* Claro está,[freeze][delay,333][continue] tu sabrás cómo\n  tu madre se tomaría\n  tal cosa.[/page]";
	global.msg_esp[6] = "[character,destiny,angry][delay,1]* Especialmente después de...[/page]";
	global.msg_esp[7] = "[character,destiny,scared][delay,1]* Ehh...[/page]";
	global.msg_esp[8] = "[character,destiny,scared][delay,1]* ...[/page]";
	global.msg_esp[9] = "[character,destiny,smile][delay,1]* Toma una moneda.[freeze][delay,333][continue]\n* Cómprate algo que\n  quieras.[/page]";
	global.msg_esp[10] = "[character,none,-1][delay,1][add1C]* (Has obtenido 1M.)[freeze][delay,333][continue]\n* (Una estrategia perfecta\n  para terminar conversaciones.)";
	global.second_dia[3] = 2;
}
else if (global.second_dia[3] == 2)
{
	global.msg[0] = "[character,destiny,smile][delay,1]* Good luck finding Chai!";
	global.msg_esp[0] = "[character,destiny,smile][delay,1]* ¡Buena suerte con\n  lo de Chai!";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
