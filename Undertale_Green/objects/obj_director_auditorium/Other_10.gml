global.talking = self;
if (global.school_time_sequence == 0)
{
	DIALOG[0] = "[character,none,-1][delay,1]* Hello there.[freeze][delay,333][continue] Do you need\n  something?[freeze][delay,333][continue] We're in the middle\n  of a scene here.[/page]";
	DIALOG[1] = "[character,stage,none][delay,1]* (You ask him where Chai is.)[/page]";
	DIALOG[2] = "[character,stage,director][delay,1]* That's a question I ask myself\n  nearly every rehearsal.[/page]";
	DIALOG[3] = "[character,stage,director][delay,1]* If she has finally decided to\n  do the bare minimum she'll be\n  backstage.[/page]";
	DIALOG[4] = "[character,stage,director][delay,1]* When you find her,[freeze][delay,333][continue] tell her\n  to have a little more\n  discipline.[/page]";
	DIALOG[5] = "[character,stage,director][delay,1]* Be a bit more like her\n  mother.[/page]";
	DIALOG[6] = "[character,stage,director][delay,1]* ...[freeze][delay,333][continue]Are you alright?[freeze][delay,333][continue]\n* You look upset.[/page]";
	DIALOG[7] = "[character,stage,director][delay,1]* Well so am I.[freeze][delay,333][continue]\n* Go find her,[freeze][delay,333][continue] alright?";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* Hola peque.[freeze][delay,333][continue] ¿Necesitas\n  algo?[freeze][delay,333][continue] Estamos en mitad de\n  una escena ahora mismo.[/page]";
	DIALOG_ESP[1] = "[character,stage,none][delay,1]* (Le preguntas dónde está Chai.)[/page]";
	DIALOG_ESP[2] = "[character,stage,director][delay,1]* Esa es una pregunta que yo\n  mismo me pregunto cada ensayo.[/page]";
	DIALOG_ESP[3] = "[character,stage,director][delay,1]* Si ella decide hacer lo más\n  mínimo ahora estára en\n  los bastidores.[/page]";
	DIALOG_ESP[4] = "[character,stage,director][delay,1]* Cuando la encuentres,[freeze][delay,333][continue] dile\n  que necesita tener más\n  disciplina.[/page]";
	DIALOG_ESP[5] = "[character,stage,director][delay,1]* Que sea algo más como\n  su madre.[/page]";
	DIALOG_ESP[6] = "[character,stage,director][delay,1]* ...[freeze][delay,333][continue]¿Estás bien?[freeze][delay,333][continue]\n* ¿Y ese ceño?[/page]";
	DIALOG_ESP[7] = "[character,stage,director][delay,1]* Yo también estoy molesto.[freeze][delay,333][continue]\n* Ve y díselo,[freeze][delay,333][continue] ¿quieres?";
}
if (global.school_time_sequence == 1)
{
	DIALOG[0] = "[character,none,-1][delay,1]* Hello there.[freeze][delay,333][continue]\n* What can I do for you?[/page]";
	DIALOG[1] = "[character,stage,none][delay,1]* (You tell him about your\n  fight with Eden.)[/page]";
	DIALOG[2] = "[character,stage,director][delay,1]* You were...[freeze][delay,333][continue] play-fighting\n  with my daughter?[/page]";
	DIALOG[3] = "[character,stage,director][delay,1]* She said she'd be studying\n  between scenes tonight.[/page]";
	DIALOG[4] = "[character,stage,director][delay,1]* There's quite a big history\n  test coming up.[/page]";
	DIALOG[5] = "[character,stage,director][delay,1]* Well,[delay,333] thank you for letting\n  me know.[/page]";
	DIALOG[6] = "[character,stage,director][delay,1]* I'll talk to her after this\n  scene is done.";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* Hola peque.[freeze][delay,333][continue]\n* ¿Necesitas algo?[/page]";
	DIALOG_ESP[1] = "[character,stage,none][delay,1]* (Le dices sobre tu\n  pelea con Eden.)[/page]";
	DIALOG_ESP[2] = "[character,stage,director][delay,1]* Estabas...[freeze][delay,333][continue] ¿jugando a las\n  peleas con ella?[/page]";
	DIALOG_ESP[3] = "[character,stage,director][delay,1]* Ella me dijo que iba a\n  estar estudiando entre\n  escenas hoy.[/page]";
	DIALOG_ESP[4] = "[character,stage,director][delay,1]* Tiene un examen de historia\n  en los próximos días.[/page]";
	DIALOG_ESP[5] = "[character,stage,director][delay,1]* Bueno,[delay,333] gracias por hacérmelo\n  saber[/page]";
	DIALOG_ESP[6] = "[character,stage,director][delay,1]* Voy a hablar con ella\n  después de esta escena.";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
