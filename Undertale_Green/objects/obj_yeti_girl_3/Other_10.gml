if (global.yetti_dialogue_3 == true)
{
	global.msg[0] = "[character,none,-1][delay,1]* is there really someone there?[delay,333]\n* or has a ghost come to haunt\n  me for my crimes?[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* i seem to have misplaced my\n  helmet once again.[/page]";
	global.msg[2] = "[character,none,-1][delay,1]* it all started when i went to\n  go change after rehearsal.[/page]";
	global.msg[3] = "[character,none,-1][delay,1]* i went to put away my costume\n  when i realized the head\n  was gone.[/page]";
	global.msg[4] = "[character,none,-1][delay,1]* then,[delay,333] out of the corner of my\n  eye,[delay,333] i thought i saw a mouse\n  run away with it...?[/page]";
	global.msg[5] = "[character,none,-1][delay,1]* ...[delay,333]\n* it's been a long day.[/page]";
	global.msg[6] = "[character,none,-1][delay,1]* you see,[delay,333] the director will have\n  my head too if i don't get\n  it back.[/page]";
	global.msg[7] = "[character,none,-1][delay,1]* but if i sit here in front\n  of his office all night he'll\n  think i've suffered enough.[/page]";
	global.msg[8] = "[character,none,-1][delay,1]* genius,[delay,333] right?[yetti3_2]";
	global.msg_esp[0] = "[character,none,-1][delay,1]* ¿hay alguien ahí?[delay,333]\n* o ha venido un fantasma a\n  atormentarme por mis pecados?[/page]";
	global.msg_esp[1] = "[character,none,-1][delay,1]* la cabeza del disfraz se\n  me ha perdido otra vez.[/page]";
	global.msg_esp[2] = "[character,none,-1][delay,1]* todo empezó cuando decidí\n  ir a cambiarme tras el ensayo.[/page]";
	global.msg_esp[3] = "[character,none,-1][delay,1]* cuando fui a quitarme el\n  disfraz,[delay,333] me di cuenta de\n  que la cabeza faltaba.[/page]";
	global.msg_esp[4] = "[character,none,-1][delay,1]* entonces,[delay,333] por el rabillo de\n  mi ojo,[delay,333] ¿creí ver a un ratón\n  robándola...?[/page]";
	global.msg_esp[5] = "[character,none,-1][delay,1]* ...[delay,333]\n* ha sido un día largo.[/page]";
	global.msg_esp[6] = "[character,none,-1][delay,1]* te explico,[delay,333] el director\n  quedrá mi cabeza también\n  como no la encuentre.[/page]";
	global.msg_esp[7] = "[character,none,-1][delay,1]* pero su me quedo sentada\n  en frente de su oficina toda\n  la noche, pensará que ya...[/page]";
	global.msg_esp[8] = "[character,none,-1][delay,1]* he sufrido bastante[/page]";
	global.msg_esp[9] = "[character,none,-1][delay,1]* soy una genia,[delay,333] ¿no\n  crees?[yetti3_2]";
}
if (global.yetti_dialogue_3 == false)
{
	global.msg[0] = "[character,none,-1][delay,1]* have you seen my helmet?[helmetprompt3]";
	global.msg_esp[0] = "[character,none,-1][delay,1]* ¿has econtrado la cabeza?[helmetprompt3]";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
