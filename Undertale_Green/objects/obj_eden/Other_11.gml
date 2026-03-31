if (global.eden_first_time == true)
{
	if (obj_textboxNEW.choice == 0)
	{
		progress++;
		global.msg[0] = "[character,eden,joyous][owsprite,eden,happy][delay,1]* Do you have anything to\n  play with?[/page]";
		global.msg[1] = "[character,eden,joyous][delay,1]* If not,[freeze][delay,333][continue] I have a joke\n  book that might pass\n  the time![/page]";
		global.msg[2] = "[character,eden,sly][owsprite,eden,default][delay,1]* No to the joke book.[freeze][delay,333][continue]\n* Got it.[/page]";
		global.msg[3] = "[character,eden,cluckin][owsprite,eden,happy][delay,1]* I guess we're not on\n  the same page.[/page]";
		global.msg[4] = "[character,eden,cluckin][owsprite,eden,happy][delay,1]* ...[/page]";
		global.msg[5] = "[character,eden,sad][owsprite,eden,default][delay,1]* Sorry.[/page]";
		global.msg[6] = "[character,eden,happy][owsprite,eden,happy][delay,1]* Did you bring any toys?[/page]";
		global.msg[7] = "[character,eden,happy][owsprite,eden,happy][delay,1]* ...[freeze][delay,333][continue]Oh,[freeze][delay,333][continue] they're chess\n  pieces![/page]";
		global.msg[8] = "[character,eden,joyous][owsprite,eden,happy][delay,1]* Wow![freeze][delay,333][continue]\n* That's a very grown-up\n  hobby for you to have![/page]";
		global.msg[9] = "[character,eden,sly][owsprite,eden,happy][delay,1]* ...[/page]";
		global.msg[10] = "[character,eden,sly][delay,1]* I see.[/page]";
		global.msg[11] = "[character,eden,sly][delay,1]* You just like how they\n  look.[/page]";
		global.msg[12] = "[character,eden,happy][delay,1]* Well that's cool![freeze][delay,333][continue]\n* Are you into medieval\n  stuff?[/page]";
		global.msg[13] = "[character,eden,joyous][delay,1]* ...[freeze][delay,333][continue]That makes two of\n  us![/page]";
		global.msg[14] = "[character,eden,happy][delay,1]* So which piece is your\n  favorite?[/page]";
		global.msg[15] = "[character,none,-1][delay,1]* (You tell her you're a\n  bishop.)[/page]";
		global.msg[16] = "[character,eden,joyous][delay,1]* Cool![freeze][delay,333][continue]\n* And which one am I?[/page]";
		global.msg[17] = "[character,none,-1][delay,1]* (You tell her she's a pawn.)[/page]";
		global.msg[18] = "[character,eden,sad][owsprite,eden,default][delay,1]* I know.[/page]";
		global.msg[19] = "[character,none,-1][delay,1]* (You ask her if she wants to\n  play as a pawn.)[/page]";
		global.msg[20] = "[character,eden,offguard][owsprite,eden,happy][delay,1]* Oh![freeze][delay,333][continue]\n* Yes,[freeze][delay,333][continue] that would be\n  great![/page]";
		global.msg[21] = "[character,eden,happy][delay,1]* I'm actually fond of\n  serfs myself.[/page]";
		global.msg[22] = "[character,none,-1][delay,1]* (You ask what a serf is.)[/page]";
		global.msg[23] = "[character,eden,happy][delay,1]* I'm glad you asked![/page]";
		global.msg[24] = "[character,eden,happy][delay,1]* Pawns are representative\n  of medieval serfs![/page]";
		global.msg[25] = "[character,eden,happy][delay,1]* Serfdom was common for\n  peasants who lived on\n  the land of their lord.[/page]";
		global.msg[26] = "[character,eden,happy][delay,1]* Serfs would cultivate a \n  crop of land,[freeze][delay,333][continue] which\n  would then become...[/page]";
		global.msg[27] = "[character,eden,angry][owsprite,eden,unammused][delay,1]* ...[/page]";
		global.msg[28] = "[character,eden,angry][delay,1]* Are you snoring?[/page]";
		global.msg[29] = "[character,eden,sly][owsprite,eden,default][delay,1]* Fine.[freeze][delay,333][continue]\n* I'll stop trying to\n  lecture you.[/page]";
		global.msg[30] = "[character,eden,happy][owsprite,eden,happy][delay,1]* How do you usually\n  play with these,[freeze][delay,333][continue] then?[/page]";
		global.msg[31] = "[character,eden,sly][delay,1]* ...[freeze][delay,333][continue]Got it.[/page]";
		global.msg[32] = "[character,eden,cluckin][delay,1]* You like to make them\n  fight.[/page]";
		global.msg[33] = "[character,eden,joyous][delay,1]* Well I'm not sure how\n  creative I can be,[freeze][delay,333][continue] but\n  I'll try my best![/page][battle,eden]";
		global.msg_esp[0] = "[character,eden,joyous][owsprite,eden,happy][delay,1]* ¿Tienes algún juguete\n  para matar el tiempo?[/page]";
		global.msg_esp[1] = "[character,eden,joyous][delay,1]* Si se te apetece,[freeze][delay,333][continue] tengo\n  un libro que nos sería\n  útil para...[/page]";
		global.msg_esp[2] = "[character,eden,joyous][delay,1]* ...pasar el rato.[/page]";
		global.msg_esp[3] = "[character,eden,sly][owsprite,eden,default][delay,1]* Vale, lo pillo.[freeze][delay,333][continue]\n* Nada de libros.[/page]";
		global.msg_esp[4] = "[character,eden,cluckin][owsprite,eden,happy][delay,1]* Supongo que no estamos\n  leyendo el mismo cuento.[/page]";
		global.msg_esp[5] = "[character,eden,cluckin][owsprite,eden,happy][delay,1]* ...[/page]";
		global.msg_esp[6] = "[character,eden,sad][owsprite,eden,default][delay,1]* Lo siento.[/page]";
		global.msg_esp[7] = "[character,eden,happy][owsprite,eden,happy][delay,1]* ¿Entonces,[freeze][delay,333][continue] tienes algún\n  juguete?[/page]";
		global.msg_esp[8] = "[character,eden,happy][owsprite,eden,happy][delay,1]* ...[freeze][delay,333][continue]Ah,[freeze][delay,333][continue] que son fichas\n  de ajedrez...[/page]";
		global.msg_esp[9] = "[character,eden,joyous][owsprite,eden,happy][delay,1]* ¡Guau![freeze][delay,333][continue]\n* ¡El ajedrez es de\n  niños grandes![/page]";
		global.msg_esp[10] = "[character,eden,sly][owsprite,eden,happy][delay,1]* ...[/page]";
		global.msg_esp[11] = "[character,eden,sly][delay,1]* Ya veo...[/page]";
		global.msg_esp[12] = "[character,eden,sly][delay,1]* Solo te gusta como\n  se ven las fichas.[/page]";
		global.msg_esp[13] = "[character,eden,happy][delay,1]* ¡Bueno,[freeze][delay,333][continue] ni tan mal![freeze][delay,333][continue]\n* Por cierto,[freeze][delay,333][continue] ¿Te gustan\n  las cosas medievales?[/page]";
		global.msg_esp[14] = "[character,eden,joyous][delay,1]* ...[freeze][delay,333][continue]¡Ya somos dos![/page]";
		global.msg_esp[15] = "[character,eden,happy][delay,1]* ¿Cuál ficha es tu\n  favorita?[/page]";
		global.msg_esp[16] = "[character,none,-1][delay,1]* (Le dices que eres el alfil,[freeze][delay,333][continue]\n  y que son piezas,[freeze][delay,333][continue] no fichas.)[/page]";
		global.msg_esp[17] = "[character,eden,joyous][delay,1]* ¡Vale![freeze][delay,333][continue]\n* ...[freeze][delay,333][continue]¿Y cuál sería yo?[/page]";
		global.msg_esp[18] = "[character,none,-1][delay,1]* (Le dices que ella es el peón.)[/page]";
		global.msg_esp[19] = "[character,eden,sad][owsprite,eden,default][delay,1]* Ya sabía...[/page]";
		global.msg_esp[20] = "[character,none,-1][delay,1]* (Le preguntas si quiere jugar\n  como el peón.)[/page]";
		global.msg_esp[21] = "[character,eden,offguard][owsprite,eden,happy][delay,1]* ¡Ah![freeze][delay,333][continue]\n* Claro,[freeze][delay,333][continue] ¡Me encantaría![/page]";
		global.msg_esp[22] = "[character,eden,happy][delay,1]* Me interesan mucho\n  los siervos.[/page]";
		global.msg_esp[23] = "[character,none,-1][delay,1]* (Le preguntas qué es un siervo.)[/page]";
		global.msg_esp[24] = "[character,eden,happy][delay,1]* ¡Gracias por preguntar![/page]";
		global.msg_esp[25] = "[character,eden,happy][delay,1]* ¡Los peones representan\n  a los siervos\n  medievales![/page]";
		global.msg_esp[26] = "[character,eden,happy][delay,1]* La servidumbre era muy\n  común entre quienes\n  vivían bajo un...[/page]";
		global.msg_esp[27] = "[character,eden,happy][delay,1]* ...terrateniente.[freeze][delay,333][continue]\n* Los siervos eran\n  encargados con la...[/page]";
		global.msg_esp[28] = "[character,eden,happy][delay,1]* ...tarea de cultivar un\n  trozo de tierra.[/page]";
		global.msg_esp[29] = "[character,eden,happy][delay,1]* Los siervos entonces...[/page]";
		global.msg_esp[30] = "[character,eden,angry][owsprite,eden,unammused][delay,1]* ...[/page]";
		global.msg_esp[31] = "[character,eden,angry][delay,1]* ¿Estás roncando?[/page]";
		global.msg_esp[32] = "[character,eden,sly][owsprite,eden,default][delay,1]* Vale.[freeze][delay,333][continue]\n* Pararé mi charla sobre\n  el temita medieval.[/page]";
		global.msg_esp[33] = "[character,eden,happy][owsprite,eden,happy][delay,1]* ¿Cómo juegas con las\n  piezas?[/page]";
		global.msg_esp[34] = "[character,eden,sly][delay,1]* ...[freeze][delay,333][continue]Vale,[freeze][delay,333][continue] lo pillo.[/page]";
		global.msg_esp[35] = "[character,eden,cluckin][delay,1]* Te gusta jugar a las\n  batallitas.[/page]";
		global.msg_esp[36] = "[character,eden,joyous][delay,1]* No sé qué tan creativa\n  puedo llegar a ser,[freeze][delay,333][continue]¡pero\n  daré lo mejor de mí![/page][battle,eden]";
	}
	else
	{
		global.msg[0] = "[character,eden,tweakin][owsprite,eden,default][delay,1]* Chai said you shouldn't\n  talk to anyone here?[/page]";
		global.msg[1] = "[character,eden,tweakin][delay,1]* Well,[freeze][delay,333][continue] aren't we talking\n  already?[/page]";
		global.msg[2] = "[character,eden,sly][delay,1]* Your sister shouldn't\n  stop you from having\n  fun,[freeze][delay,333][continue] Olive.[/page]";
		global.msg[3] = "[character,eden,sly][owsprite,eden,tweakin][delay,1]* Plus,[freeze][delay,333][continue] I already saw-[freeze][delay,333][continue]\n* Are those toys?[/page]";
		global.msg[4] = "[character,eden,happy][owsprite,eden,happy][delay,1]* ...[freeze][delay,333][continue]Oh,[freeze][delay,333][continue] they're chess\n  pieces![/page]";
		global.msg[5] = "[character,eden,joyous][owsprite,eden,happy][delay,1]* Wow![freeze][delay,333][continue]\n* That's a very grown-up\n  hobby for you to have![/page]";
		global.msg[6] = "[character,eden,sly][owsprite,eden,happy][delay,1]* ...[/page]";
		global.msg[7] = "[character,eden,sly][delay,1]* I see.[/page]";
		global.msg[8] = "[character,eden,sly][delay,1]* You just like how they\n  look.[/page]";
		global.msg[9] = "[character,eden,happy][delay,1]* Well that's cool![freeze][delay,333][continue]\n* Are you into medieval\n  stuff?[/page]";
		global.msg[10] = "[character,eden,joyous][delay,1]* ...[freeze][delay,333][continue]That makes two of\n  us![/page]";
		global.msg[11] = "[character,eden,happy][delay,1]* So which piece is your\n  favorite?[/page]";
		global.msg[12] = "[character,none,-1][delay,1]* (You tell her you're a\n  bishop.)[/page]";
		global.msg[13] = "[character,eden,joyous][delay,1]* Cool![freeze][delay,333][continue]\n* And which one am I?[/page]";
		global.msg[14] = "[character,none,-1][delay,1]* (You tell her she's a pawn.)[/page]";
		global.msg[15] = "[character,eden,sad][owsprite,eden,default][delay,1]* I know.[/page]";
		global.msg[16] = "[character,none,-1][delay,1]* (You ask her if she wants to\n  play as a pawn.)[/page]";
		global.msg[17] = "[character,eden,offguard][owsprite,eden,happy][delay,1]* Oh![freeze][delay,333][continue]\n* Yes,[freeze][delay,333][continue] that would be\n  great![/page]";
		global.msg[18] = "[character,eden,happy][delay,1]* I'm actually fond of\n  serfs myself.[/page]";
		global.msg[19] = "[character,none,-1][delay,1]* (You ask what a serf is.)[/page]";
		global.msg[20] = "[character,eden,happy][delay,1]* I'm glad you asked![/page]";
		global.msg[21] = "[character,eden,happy][delay,1]* Pawns are representative\n  of medieval serfs![/page]";
		global.msg[22] = "[character,eden,happy][delay,1]* Serfdom was common for\n  peasants who lived on\n  the land of their lord.[/page]";
		global.msg[23] = "[character,eden,happy][delay,1]* Serfs would cultivate a \n  crop of land,[freeze][delay,333][continue] which\n  would then become...[/page]";
		global.msg[24] = "[character,eden,angry][owsprite,eden,unammused][delay,1]* ...[/page]";
		global.msg[25] = "[character,eden,angry][delay,1]* Are you snoring?[/page]";
		global.msg[26] = "[character,eden,sly][owsprite,eden,default][delay,1]* Fine.[freeze][delay,333][continue]\n* I'll stop trying to\n  lecture you.[/page]";
		global.msg[27] = "[character,eden,happy][owsprite,eden,happy][delay,1]* How do you usually\n  play with these,[freeze][delay,333][continue] then?[/page]";
		global.msg[28] = "[character,eden,sly][delay,1]* ...[freeze][delay,333][continue]Got it.[/page]";
		global.msg[29] = "[character,eden,cluckin][delay,1]* You like to make them\n  fight.[/page]";
		global.msg[30] = "[character,eden,joyous][delay,1]* Well I'm not sure how\n  creative I can be,[freeze][delay,333][continue] but\n  I'll try my best![/page][battle,eden]";
	}
}
if (global.eden_first_time == false)
{
	if (obj_textboxNEW.choice == 0)
		global.msg[0] = "[character,eden,joyous][owsprite,eden,happy][delay,1]* Alright,[freeze][delay,333][continue] let's get\n  started![/page][battle,eden]";
	else
		global.msg[0] = "[character,eden,joyous][owsprite,eden,happy][delay,1]* Okay,[freeze][delay,333][continue] I'll be waiting\n  for when you're ready!";
}
