if (global.second_dia[7] == 0)
{
	global.msg[0] = "[character,destiny,smile][delay,1]* What's up,[freeze][delay,333][continue] Olive?[/page]";
	global.msg[1] = "[character,destiny,smug][delay,1]* These guys suck right?[/page]";
	global.msg[2] = "[character,none,-1][delay,1]* (You tell her that's mean.)[/page]";
	global.msg[3] = "[character,destiny,smug][delay,1]* Let me give you a\n  little wisdom Olive.[/page]";
	global.msg[4] = "[character,destiny,smug][delay,1]* If someone's mean to\n  you,[freeze][delay,333][continue] it's either because\n  you deserve it...[/page]";
	global.msg[5] = "[character,destiny,smug][delay,1]* ...or they think they\n  deserve it.[/page]";
	global.msg[6] = "[character,destiny,neutral][delay,1]* Let me tell you,[freeze][delay,333][continue] these\n  people deserve it.[/page]";
	global.msg[7] = "[character,destiny,neutral][delay,1]* They all turned on me\n  when Alaska and I drank\n  soda from a trombone.[/page]";
	global.msg[8] = "[character,none,-1][delay,1]* (You ask her why she's here\n  if she doesn't like the\n  music.)[/page]";
	global.msg[9] = "[character,destiny,ashamed][delay,1]* Because I deserve it.";
	global.msg_esp[0] = "[character,destiny,smile][delay,1]* ¿Qué pasa,[freeze][delay,333][continue] Olive?[/page]";
	global.msg_esp[1] = "[character,destiny,smug][delay,1]* ¿Estos apestan,[freeze][delay,333][continue] eh?[/page]";
	global.msg_esp[2] = "[character,none,-1][delay,1]* (Le dices que está siendo\n  mala.)[/page]";
	global.msg_esp[3] = "[character,destiny,smug][delay,1]* Dejame darte un poco\n  de sabiduría Olive.[/page]";
	global.msg_esp[4] = "[character,destiny,smug][delay,1]* Si alguien es malo\n  contigo,[freeze][delay,333][continue] bien es porque\n  te lo mereces...[/page]";
	global.msg_esp[5] = "[character,destiny,smug][delay,1]* ...o se piensan que\n  te lo mereces.[/page]";
	global.msg_esp[6] = "[character,destiny,neutral][delay,1]* Déjame decirte,[freeze][delay,333][continue] esta\n  gente se lo merece.[/page]";
	global.msg_esp[7] = "[character,destiny,neutral][delay,1]* Todos se pusieron\n  en nuestra contra\n  cuando Alaska bebió...[/page]";
	global.msg_esp[8] = "[character,destiny,neutral][delay,1]* ...soda de un\n  trombón.[/page]";
	global.msg_esp[9] = "[character,none,-1][delay,1]* (Le preguntas por qué\n  está aquí si no le\n  gusta la música.)[/page]";
	global.msg_esp[10] = "[character,destiny,ashamed][delay,1]* Porque me lo merezco.";
	global.second_dia[7] = 1;
}
else if (global.second_dia[7] == 1)
{
	global.msg[0] = "[character,destiny,smile][delay,1]* What's a trombone?[/page]";
	global.msg[1] = "[character,destiny,smile][delay,1]* Oh it's like an advanced\n  slide whistle.";
	global.msg_esp[0] = "[character,destiny,smile][delay,1]* ¿Que qué es un trombón?[/page]";
	global.msg_esp[1] = "[character,destiny,smile][delay,1]* Oh, es una versión\n  avanzada de una\n  flauta de émbolo...";
	global.msg_esp[1] = "[character,destiny,smile][delay,1]* Sabes lo que es...[freeze][delay,333][continue]\n  una flauta de émbolo\n  ¿no";
}
global.save_photo = 16;
instance_create_depth(x, y, -1000, obj_textboxNEW);
