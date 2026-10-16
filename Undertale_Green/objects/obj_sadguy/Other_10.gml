global.talking = self;
global.save_photo = 13;
if (global.second_dia[10] == 0)
{
	DIALOG[0] = "[character,none,-1][delay,1]* They didn't let me in...[/page]";
	DIALOG[1] = "[character,none,-1]* They said all were welcome...[/page]";
	DIALOG[2] = "[character,none,-1]* Now I come here just to feel\n  something...[/page]";
	DIALOG[3] = "[character,none,-1]* Why does nothing ever go my\n  way.....";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* No me han dejado pasar...[/page]";
	DIALOG_ESP[1] = "[character,none,-1]* Dijeron que todos eran\n  bienvenidos...[/page]";
	DIALOG_ESP[2] = "[character,none,-1]* Vine aquí para que\n  me hiciera sentir algo...[/page]";
	DIALOG_ESP[3] = "[character,none,-1]* Por qué nada me sale\n  bien.....";
	global.second_dia[10] = 1;
}
else
{
	DIALOG[0] = "[character,none,-1][delay,1]* Everyone keeps asking me about\n  my audition...[/page]";
	DIALOG[1] = "[character,none,-1]* What is that...";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* Todos me preguntan sobre\n  mi audición...[/page]";
	DIALOG_ESP[1] = "[character,none,-1]* Qué es eso...";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
