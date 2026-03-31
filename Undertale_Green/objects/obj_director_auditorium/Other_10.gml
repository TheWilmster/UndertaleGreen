global.talking = self;
if (global.school_time_sequence == 0)
{
	global.msg[0] = "[character,none,-1][delay,1]* Hello there.[freeze][delay,333][continue] Do you need\n  something?[freeze][delay,333][continue] We're in the middle\n  of a scene here.[/page]";
	global.msg[1] = "[character,stage,none][delay,1]* (You ask him where Chai is.)[/page]";
	global.msg[2] = "[character,stage,director][delay,1]* That's a question I ask myself\n  nearly every rehearsal.[/page]";
	global.msg[3] = "[character,stage,director][delay,1]* If she has finally decided to\n  do the bare minimum she'll be\n  backstage.[/page]";
	global.msg[4] = "[character,stage,director][delay,1]* When you find her,[freeze][delay,333][continue] tell her\n  to have a little more\n  discipline.[/page]";
	global.msg[5] = "[character,stage,director][delay,1]* Be a bit more like her\n  mother.[/page]";
	global.msg[6] = "[character,stage,director][delay,1]* ...[freeze][delay,333][continue]Are you alright?[freeze][delay,333][continue]\n* You look upset.[/page]";
	global.msg[7] = "[character,stage,director][delay,1]* Well so am I.[freeze][delay,333][continue]\n* Go find her,[freeze][delay,333][continue] alright?";
	global.msg_esp[0] = "[character,none,-1][delay,1]* Hola peque.[freeze][delay,333][continue] ¿Necesitas\n  algo?[freeze][delay,333][continue] Estamos en mitad de\n  una escena ahora mismo.[/page]";
	global.msg_esp[1] = "[character,stage,none][delay,1]* (Le preguntas dónde está Chai.)[/page]";
	global.msg_esp[2] = "[character,stage,director][delay,1]* Esa es una pregunta que yo\n  mismo me pregunto cada ensayo.[/page]";
	global.msg_esp[3] = "[character,stage,director][delay,1]* Si ella decide hacer lo más\n  mínimo ahora estára en\n  los bastidores.[/page]";
	global.msg_esp[4] = "[character,stage,director][delay,1]* Cuando la encuentres,[freeze][delay,333][continue] dile\n  que necesita tener más\n  disciplina.[/page]";
	global.msg_esp[5] = "[character,stage,director][delay,1]* Que sea algo más como\n  su madre.[/page]";
	global.msg_esp[6] = "[character,stage,director][delay,1]* ...[freeze][delay,333][continue]¿Estás bien?[freeze][delay,333][continue]\n* ¿Y ese ceño?[/page]";
	global.msg_esp[7] = "[character,stage,director][delay,1]* Yo también estoy molesto.[freeze][delay,333][continue]\n* Ve y díselo,[freeze][delay,333][continue] ¿quieres?";
}
if (global.school_time_sequence == 1)
{
	global.msg[0] = "[character,none,-1][delay,1]* Hello there.[freeze][delay,333][continue]\n* What can I do for you?[/page]";
	global.msg[1] = "[character,stage,none][delay,1]* (You tell him about your\n  fight with Eden.)[/page]";
	global.msg[2] = "[character,stage,director][delay,1]* You were...[freeze][delay,333][continue] play-fighting\n  with my daughter?[/page]";
	global.msg[3] = "[character,stage,director][delay,1]* She said she'd be studying\n  between scenes tonight.[/page]";
	global.msg[4] = "[character,stage,director][delay,1]* There's quite a big history\n  test coming up.[/page]";
	global.msg[5] = "[character,stage,director][delay,1]* Well,[delay,333] thank you for letting\n  me know.[/page]";
	global.msg[6] = "[character,stage,director][delay,1]* I'll talk to her after this\n  scene is done.";
	global.msg_esp[0] = "[character,none,-1][delay,1]* Hola peque.[freeze][delay,333][continue]\n* ¿Necesitas algo?[/page]";
	global.msg_esp[1] = "[character,stage,none][delay,1]* (Le dices sobre tu\n  pelea con Eden.)[/page]";
	global.msg_esp[2] = "[character,stage,director][delay,1]* Estabas...[freeze][delay,333][continue] ¿jugando a las\n  peleas con ella?[/page]";
	global.msg_esp[3] = "[character,stage,director][delay,1]* Ella me dijo que iba a\n  estar estudiando entre\n  escenas hoy.[/page]";
	global.msg_esp[4] = "[character,stage,director][delay,1]* Tiene un examen de historia\n  en los próximos días.[/page]";
	global.msg_esp[5] = "[character,stage,director][delay,1]* Bueno,[delay,333] gracias por hacérmelo\n  saber[/page]";
	global.msg_esp[6] = "[character,stage,director][delay,1]* Voy a hablar con ella\n  después de esta escena.";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
