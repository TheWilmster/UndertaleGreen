global.talking = self;
global.save_photo = 13;
if (global.second_dia[10] == 0)
{
	global.msg[0] = "[character,none,-1][delay,1]* They didn't let me in...[/page]";
	global.msg[1] = "[character,none,-1]* They said all were welcome...[/page]";
	global.msg[2] = "[character,none,-1]* Now I come here just to feel\n  something...[/page]";
	global.msg[3] = "[character,none,-1]* Why does nothing ever go my\n  way.....";
	global.msg_esp[0] = "[character,none,-1][delay,1]* No me han dejado pasar...[/page]";
	global.msg_esp[1] = "[character,none,-1]* Dijeron que todos eran\n  bienvenidos...[/page]";
	global.msg_esp[2] = "[character,none,-1]* Vine aquí para que\n  me hiciera sentir algo...[/page]";
	global.msg_esp[3] = "[character,none,-1]* Por qué nada me sale\n  bien.....";
	global.second_dia[10] = 1;
}
else
{
	global.msg[0] = "[character,none,-1][delay,1]* Everyone keeps asking me about\n  my audition...[/page]";
	global.msg[1] = "[character,none,-1]* What is that...";
	global.msg_esp[0] = "[character,none,-1][delay,1]* Todos me preguntan sobre\n  mi audición...[/page]";
	global.msg_esp[1] = "[character,none,-1]* Qué es eso...";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
