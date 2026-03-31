if (global.eden_first_time == true)
{
	if (obj_player.x < 290)
		sprite_index = spr_eden_l;
	global.msg[0] = "[character,eden,happy][owsprite,eden,happy][delay,5][startolivewalk]* Hello![freeze][delay,333][continue]\n* You're Olive,[freeze][delay,333][continue] right?[/page]";
	global.msg[1] = "[character,eden,happy][owsprite,eden,happy][delay,5][startolivewalk]* Where's Chai,[freeze][delay,333][continue] is she\n  with you?[/page]";
	global.msg[2] = "[character,none,-1][delay,5]* (You tell her no.) [/page]";
	global.msg[3] = "[character,eden,angry][owsprite,eden,unammused][delay,5]* (...That girl wouldn't\n  be there for her own\n  funeral.) [/page]";
	global.msg[4] = "[character,eden,joyous][owsprite,eden,happy][delay,5]* Well I'm sure she's busy\n  working on the set![/page]";
	global.msg[5] = "[character,eden,joyous][owsprite,eden,happy][delay,5]* Hey, I have some time\n  before I'm needed on\n  stage![/page]";
	global.msg[6] = "[character,eden,happy][delay,5]* Why don't we hang out\n  for a bit? [delay,111][choice]";
	global.choices[0] = "\nOkay";
	global.choices[1] = "\nI can't";
	global.msg_esp[0] = "[character,eden,happy][owsprite,eden,happy][delay,5][startolivewalk]* ¡Hola![freeze][delay,333][continue]\n* Eres Olive,[freeze][delay,333][continue] ¿no es así?[/page]";
	global.msg_esp[1] = "[character,eden,happy][owsprite,eden,happy][delay,5][startolivewalk]* ¿Dónde se ha metido\n  Chai?,[freeze][delay,333][continue] ¿te está\n  acompañando?[/page]";
	global.msg_esp[2] = "[character,none,-1][delay,5]* (Le dices que no.) [/page]";
	global.msg_esp[3] = "[character,eden,angry][owsprite,eden,unammused][delay,5]* (...Esa chica no\n  asistiría ni a su\n  propio entierro.) [/page]";
	global.msg_esp[4] = "[character,eden,joyous][owsprite,eden,happy][delay,5]* ¡Bueno,[freeze][delay,333][continue] estoy segura de\n  que está trabajando en\n  el set con los demás![/page]";
	global.msg_esp[5] = "[character,eden,joyous][owsprite,eden,happy][delay,5]* ¡Por cierto,[freeze][delay,333][continue] tengo algo\n  de tiempo antes de que\n  me llamen al escenario![/page]";
	global.msg_esp[6] = "[character,eden,happy][delay,5]* ¿Por qué no me acompañas\n  un ratito? [delay,111][choice]";
	global.choices_esp[0] = "\nClaro";
	global.choices_esp[1] = "\nNo puedo";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
if (global.eden_first_time == false)
{
	global.msg[0] = "[character,eden,sly][owsprite,eden,happy][delay,1]* You ready for a\n  rematch?[choice]";
	global.choices[0] = "\nSure";
	global.choices[1] = "\nNah";
	global.msg_esp[0] = "[character,eden,sly][owsprite,eden,happy][delay,1]* ¿Quieres una revancha?[choice]";
	global.choices_esp[0] = "\nSí";
	global.choices_esp[1] = "\nPaso";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
