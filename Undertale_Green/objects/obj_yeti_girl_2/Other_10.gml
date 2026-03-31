if (global.yetti_dialogue_2 == true)
{
	global.msg[0] = "[character,none,-1][delay,5]* you'll never guess what\n  happened.[/page]";
	global.msg[1] = "[character,none,-1][delay,5]* i was walking around in the pit\n  and i tripped and fell.[/page]";
	global.msg[2] = "[character,none,-1][delay,5]* as i plunged face-first into\n  the cold,[delay,333] hard floor,[delay,333] my\n  helmet flew right off my head...[/page]";
	global.msg[3] = "[character,none,-1][delay,5]* ...and rolled into a nearby\n  vent.[/page]";
	global.msg[4] = "[character,none,-1][delay,5]* with that,[delay,333] my brief bout of\n  happiness was cut short.[/page]";
	global.msg[5] = "[character,none,-1][delay,5]* but if i sit here and don't\n  move a muscle,[delay,333] i won't lose\n  anything else.[/page]";
	global.msg[6] = "[character,none,-1][delay,5]* genius,[delay,333] right?[yetti2_2]";
	global.msg_esp[0] = "[character,none,-1][delay,5]* nunca vas a adivinar lo\n  que me ha pasado.[/page]";
	global.msg_esp[1] = "[character,none,-1][delay,5]* estaba caminando por donde\n la orquesta y tropecé.[/page]";
	global.msg_esp[2] = "[character,none,-1][delay,5]* mientras me caía de cara\n  al frío suelo,[delay,333] duro piso,[delay,333] la\n  cabeza del disfraz voló...[/page]";
	global.msg_esp[3] = "[character,none,-1][delay,5]* ...y rodó hacia un\n  ducto de ventilación.[/page]";
	global.msg_esp[4] = "[character,none,-1][delay,5]* con eso,[delay,333] mi pequeño tacto\n  con la felicidad acabó.[/page]";
	global.msg_esp[5] = "[character,none,-1][delay,5]* pero si me quedo sentada\n  sin mover un dedo,[delay,333] no\n  perderé nada más.[/page]";
	global.msg_esp[6] = "[character,none,-1][delay,5]* soy una genia,[delay,333] ¿no\n  crees?[yetti2_2]";
}
if (global.yetti_dialogue_2 == false)
{
	global.msg[0] = "[character,none,-1][delay,1]* have you seen my helmet?[helmetprompt2]";
	global.msg_esp[0] = "[character,none,-1][delay,1]* ¿has econtrado la cabeza?[helmetprompt2]";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
