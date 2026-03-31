if (global.school_time_sequence == 0)
{
	if (global.second_dia[9] == 0)
	{
		global.msg[0] = "[character,stage,stagenpc][delay,1]* What has Elliot done?[freeze][delay,333][continue]\n* It's...[freeze][delay,333][continue] it's horrible![/page]";
		global.msg[1] = "[character,gray,summin][delay,1]* How about we all\n  calm down,[freeze][delay,333][continue] alright?[freeze][delay,333][continue]\n* This wasn't his fault.[/page]";
		global.msg[2] = "[character,stage,stagenpc][delay,1]* Of course you'd say that![freeze][delay,333][continue]\n* He's your brother![/page]";
		global.msg[3] = "[character,gray,summin][delay,1]* Well at...[/page]";
		global.msg[4] = "[character,gray,nervous][delay,1]* Line?[/page]";
		global.msg[5] = "[character,stage,director][delay,1]* Nope.[freeze][delay,333][continue] We should really be\n  off book by now.[/page]";
		global.msg[6] = "[character,gray,nervous][delay,1]* Respectfully Mr.\n  Clementine,[freeze][delay,333][continue] the show is\n  still three weeks out.[/page]";
		global.msg[7] = "[character,gray,nervous][delay,1]* I mean I don't even have\n  my costume.[/page]";
		global.msg[8] = "[character,stage,director][delay,1]* So you need a costume to\n  remember your lines?[/page]";
		global.msg[9] = "[character,gray,nervous][delay,1]* No,[freeze][delay,333][continue] I'm just saying...[/page]";
		global.msg[10] = "[character,stage,director][delay,1]* Then how about you try for\n  once in your undisciplined life\n  and memorize your part![/page]";
		global.msg[11] = "[character,gray,angryright][delay,1]* You know,[freeze][delay,333][continue] I'm really\n  starting to get why Eden\n  is the way she is.[/page]";
		global.msg[12] = "[character,stage,director][delay,1]* What did you just say to me?[/page]";
		global.msg[13] = "[character,stage,stagenpc][delay,1]* Should I just step out for\n  a second or like...?";
		global.msg_esp[0] = "[character,stage,stagenpc][delay,1]* ¿Qué ha hecho Elliot?[freeze][delay,333][continue]\n* Es...[freeze][delay,333][continue] ¡Es horrible![/page]";
		global.msg_esp[1] = "[character,gray,summin][delay,1]* Calmémonos todos un\n  poco,[freeze][delay,333][continue] ¿entendemos?[freeze][delay,333][continue]\n* Nada de esto es su culpa.[/page]";
		global.msg_esp[2] = "[character,stage,stagenpc][delay,1]* ¡Obviamente tú dirías eso![freeze][delay,333][continue]\n* ¡Él es tu hermano![/page]";
		global.msg_esp[3] = "[character,gray,summin][delay,1]* Bueno...[freeze][delay,333][continue] ehh...[freeze][delay,333][continue] líneas[/page]";
		global.msg_esp[4] = "[character,gray,nervous][delay,1]* ¿Mis líneas por favor?[/page]";
		global.msg_esp[5] = "[character,stage,director][delay,1]* Ya nada.[freeze][delay,333][continue] Deberías de haber\n  improvisado a este punto.[/page]";
		global.msg_esp[6] = "[character,gray,nervous][delay,1]* Con todo respeto Sr.\n  Clementine,[freeze][delay,333][continue] al espectáculo le\n  quedan tres semanas.[/page]";
		global.msg_esp[7] = "[character,gray,nervous][delay,1]* Mírame,[freeze][delay,333][continue] no tengo ni\n  mi disfraz.[/page]";
		global.msg_esp[8] = "[character,stage,director][delay,1]* Con lo que necesitas un\n  disfraz para recordar tus\n  líneas?[/page]";
		global.msg_esp[9] = "[character,gray,nervous][delay,1]* No,[freeze][delay,333][continue] solo digo que...[/page]";
		global.msg_esp[10] = "[character,stage,director][delay,1]* ¡Entonces por qué no te\n  aplicas por una vez en tu\n  vida y las memorizas![/page]";
		global.msg_esp[11] = "[character,gray,angryright][delay,1]* Sabes qué,[freeze][delay,333][continue] estoy empezando\n  a comprender por\n  qué Eden salió así.[/page]";
		global.msg_esp[12] = "[character,stage,director][delay,1]* ¿Qué me acabas de decir?[/page]";
		global.msg_esp[13] = "[character,stage,stagenpc][delay,1]* ¿Debería dejaros solos o...?";
		global.second_dia[9] = 1;
	}
	else
	{
		global.msg[0] = "[character,stage,stagenpc][delay,1]* Of course you'd say that![freeze][delay,333][continue]\n* He's your brother![/page]";
		global.msg[1] = "[character,gray,summin][delay,1]* Well at least he's\n  not my overbearing dad.[/page]";
		global.msg[2] = "[character,stage,director][delay,1]* I'll do my very best to\n  pretend I didn't hear that.[/page]";
		global.msg[3] = "[character,stage,director][delay,1]* You know that's not your\n  line,[freeze][delay,333][continue] try again.";
		global.msg_esp[0] = "[character,stage,stagenpc][delay,1]* ¡Obviamente tú dirías eso![freeze][delay,333][continue]\n* ¡Él es tu hermano![/page]";
		global.msg_esp[1] = "[character,gray,summin][delay,1]* Al menos él no es\n  mi padre despótico.[/page]";
		global.msg_esp[2] = "[character,stage,director][delay,1]* Haré como que no he\n  escuchado eso.[/page]";
		global.msg_esp[3] = "[character,stage,director][delay,1]* Tú sabes que esa no es\n  tu linea,[freeze][delay,333][continue] inténtalo otra\n  vez.";
	}
}
if (global.school_time_sequence == 1)
{
	if (global.second_dia[12] == 0)
	{
		global.msg[0] = "[character,stage,stagenpc2][delay,1]* ...Yeah I'll be right over![freeze][delay,333][continue]\n* Just start without me![/page]";
		global.msg[1] = "[character,stage,stagenpc3][delay,1]* Hey there.[freeze][delay,333][continue]\n* Tough week,[freeze][delay,333][continue] huh?[/page]";
		global.msg[2] = "[character,stage,director][delay,1]* Alright what's going on\n  here.[/page]";
		global.msg[3] = "[character,stage,stagenpc2][delay,1]* What's up?[/page]";
		global.msg[4] = "[character,stage,director][delay,1]* Why do you keep using that\n  tone?[/page]";
		global.msg[5] = "[character,stage,director][delay,1]* Are you trying to seduce\n  her or empathize with her?[/page]";
		global.msg[6] = "[character,stage,stagenpc2][delay,1]* I don't know,[freeze][delay,333][continue] I just feel\n  like my character would be\n  kinda into her.[/page]";
		global.msg[7] = "[character,stage,director][delay,1]* Okay,[freeze][delay,333][continue] I'm telling you he's\n  not.[/page]";
		global.msg[8] = "[character,stage,stagenpc2][delay,1]* Well I'm not sure though,[freeze][delay,333][continue]\n  it feels like all signs are\n  there in the script.[/page]";
		global.msg[9] = "[character,stage,director][delay,1]* But they aren't.[freeze][delay,333][continue]\n* And that's my daughter\n  you're talking about.[/page]";
		global.msg[10] = "[character,eden,tweakin][delay,1]* Dad,[freeze][delay,333][continue] he's not really...[/page]";
		global.msg[11] = "[character,stage,director][delay,1]* I don't want to hear it.[freeze][delay,333][continue]\n* Try again,[freeze][delay,333][continue] this time with\n  no funny stuff.";
		global.msg_esp[0] = "[character,stage,stagenpc2][delay,1]* ...Ya llego,[freeze][delay,333][continue] ¡espera\n  un momento![freeze][delay,333][continue]\n* ¡Empezad sin mí![/page]";
		global.msg_esp[1] = "[character,stage,stagenpc3][delay,1]* Qué pasa tía.[freeze][delay,333][continue]\n* Semana dura,[freeze][delay,333][continue] ¿eh?[/page]";
		global.msg_esp[2] = "[character,stage,director][delay,1]* Qué está pasando aquí.[/page]";
		global.msg_esp[3] = "[character,stage,stagenpc2][delay,1]* ¿Qué pasa?[/page]";
		global.msg_esp[4] = "[character,stage,director][delay,1]* ¿Por qué utilizas ese\n  tono de voz?[/page]";
		global.msg_esp[5] = "[character,stage,director][delay,1]* ¿Estás intentado ligar con\n  ella?[/page]";
		global.msg_esp[6] = "[character,stage,stagenpc2][delay,1]* No lo sé,[freeze][delay,333][continue] Pienso que\n  mi personaje tiene algo\n  por ella.[/page]";
		global.msg_esp[7] = "[character,stage,director][delay,1]* Vale,[freeze][delay,333][continue] pues te digo que\n  no siente nada.[/page]";
		global.msg_esp[8] = "[character,stage,stagenpc2][delay,1]* No estoy tan seguro,[freeze][delay,333][continue]\n  parece haber muchas señales\n  que apuntan a que sí.[/page]";
		global.msg_esp[9] = "[character,stage,director][delay,1]* Pero no las hay.[freeze][delay,333][continue]\n* Y estás hablando sobre\n  mi hija.[/page]";
		global.msg_esp[10] = "[character,eden,tweakin][delay,1]* Papá,[freeze][delay,333][continue] Yo no le gusto...[/page]";
		global.msg_esp[11] = "[character,stage,director][delay,1]* Ni me hables de eso.[freeze][delay,333][continue]\n* Inténtalo otra vez,[freeze][delay,333][continue] esta vez\n  sin ese tonito.";
		global.second_dia[12] = 1;
	}
	else
	{
		global.msg[0] = "[character,stage,stagenpc2][delay,1]* Hey there.[freeze][delay,333][continue]\n* Tough week,[freeze][delay,333][continue] huh?[/page]";
		global.msg[1] = "[character,eden,sad][delay,1]* Yeah.[/page]";
		global.msg[2] = "[character,eden,sad][delay,1]* ...[freeze][delay,333][continue]Have you ever done\n  something you regret?[freeze][delay,333][continue]\n* Something-[/page]";
		global.msg[3] = "[character,stage,stagenpc2][delay,1]* Let me tell you,[freeze][delay,333][continue] I promise\n  you won't regret doing\n  anything with me.[/page]";
		global.msg[4] = "[character,stage,director][delay,1]* Alright we're taking five.[/page]";
		global.msg[5] = "[character,stage,stagenpc2][delay,1]* What did I do?";
		global.msg_esp[0] = "[character,stage,stagenpc2][delay,1]* Hola amiga.[freeze][delay,333][continue]\n* Liada con el trabajo,[freeze][delay,333][continue] ¿no?[/page]";
		global.msg_esp[1] = "[character,eden,sad][delay,1]* Sí.[/page]";
		global.msg_esp[2] = "[character,eden,sad][delay,1]* ...[freeze][delay,333][continue]¿Has hecho jamás algo de\n  lo que te arrepientas?[freeze][delay,333][continue]\n* Algo-[/page]";
		global.msg_esp[3] = "[character,stage,stagenpc2][delay,1]* Déjame decirte,[freeze][delay,333][continue] Te prometo\n  que no te arrepentirás si\n  haces cosas conmigo.[/page]";
		global.msg_esp[4] = "[character,stage,director][delay,1]* Vale chicos,[freeze][delay,333][continue] cinco minutos de\n  descanso.[/page]";
		global.msg_esp[5] = "[character,stage,stagenpc2][delay,1]* ¿Ahora qué he hecho?";
	}
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
