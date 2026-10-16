global.talking = self;
if (global.second_dia[6] == 0)
{
	DIALOG[0] = "[character,kaitlyn,neutral][delay,1]* What do you want,[freeze][delay,333][continue] Olive.[/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* (You ask Kaitlyn where your\n  sister is.)[/page]";
	DIALOG[2] = "[character,kaitlyn,neutral][delay,1]* Beats me.";
	DIALOG_ESP[0] = "[character,kaitlyn,neutral][delay,1]* Qué quieres,[freeze][delay,333][continue] Olive.[/page]";
	DIALOG_ESP[1] = "[character,none,-1][delay,1]* (Le preguntas a Kaitlyn si\n  sabe donde está tu hermana.)[/page]";
	DIALOG_ESP[2] = "[character,kaitlyn,neutral][delay,1]* A saber.";
	global.second_dia[6] = 1;
}
else
{
	DIALOG[0] = "[character,kaitlyn,neutral][delay,1]* Can't you see I'm\n  busy?[/page]";
	DIALOG[1] = "[character,kaitlyn,neutral][delay,1]* Someone's outbidding me\n  on this necklace.[/page]";
	DIALOG[2] = "[character,kaitlyn,neutral][delay,1]* I'll kill you,[freeze][delay,333][continue]\n  PearlPirate5.";
	DIALOG_ESP[0] = "[character,kaitlyn,neutral][delay,1]* ¿No puedes ver que estoy\n  ocupada?[/page]";
	DIALOG_ESP[1] = "[character,kaitlyn,neutral][delay,1]* Estoy apostando en\n  línea,[freeze][delay,333][continue] quiero este collar.[/page]";
	DIALOG_ESP[2] = "[character,kaitlyn,neutral][delay,1]* Te mataré,[freeze][delay,333][continue]\n  PearlPirate5.";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
