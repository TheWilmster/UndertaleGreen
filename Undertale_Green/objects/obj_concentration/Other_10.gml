if (global.second_dia[4] == 0)
{
	DIALOG[0] = "[character,none,-1][delay,1]* Don't bother me.[/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* I'm in the zone.[/page]";
	DIALOG[2] = "[character,none,-1][delay,1]* If my concentration is broken\n  for even a second,[delay,333] I'll\n  forget all my lines.[/page]";
	DIALOG[3] = "[character,none,-1][delay,1]* If even one person says one\n  word to me,[delay,333] my scene's gonna\n  be ruined.[/page]";
	DIALOG[4] = "[character,none,-1][delay,1]* If I have but one conversation\n  before I'm up,[delay,333] the whole show\n  will fall apart.[/page]";
	DIALOG[5] = "[character,none,-1][delay,1]* ...[/page]";
	DIALOG[6] = "[character,none,-1][delay,1]* .............[/page]";
	DIALOG[7] = "[character,none,-1][delay,1]* ..............................\n  ..............................\n  ..............................[/page]";
	DIALOG[8] = "[character,none,-1][character,conc,scared][delay,1]* Uh oh.";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* Ni te preocupes.[/page]";
	DIALOG_ESP[1] = "[character,none,-1][delay,1]* Estoy ya allí.[/page]";
	DIALOG_ESP[2] = "[character,none,-1][delay,1]* Si mi concentración se rompe\n  por solo un segundo,[delay,333] Voy\n  a olvidar todas mis líneas.[/page]";
	DIALOG_ESP[3] = "[character,none,-1][delay,1]* Incluso como alguien me\n  diga la mínima palabra,[delay,333]\n  mi escena será arruinada.[/page]";
	DIALOG_ESP[4] = "[character,none,-1][delay,1]* Incluso como tenga una conversación\n  antes de terminar,[delay,333] todo el\n  espectáculo al garete.[/page]";
	DIALOG_ESP[5] = "[character,none,-1][delay,1]* ...[/page]";
	DIALOG_ESP[6] = "[character,none,-1][delay,1]* .............[/page]";
	DIALOG_ESP[7] = "[character,none,-1][delay,1]* ..............................\n  ..............................\n  ..............................[/page]";
	DIALOG_ESP[8] = "[character,none,-1][character,conc,scared][delay,1]* Oh oh.";
	global.second_dia[4] = 1;
}
else
{
	DIALOG[0] = "[character,none,-1][delay,1]* Uh oh.";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* Oh oh.";
}
global.save_photo = 10;
instance_create_depth(x, y, -1000, obj_textboxNEW);
