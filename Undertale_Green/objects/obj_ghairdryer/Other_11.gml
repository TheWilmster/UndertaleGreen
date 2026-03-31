if (obj_textboxNEW.choice == 0)
{
	global.msg[0] = "[character,none,-1]* You use the dryer and its\n  power cord like a bow and\n  arrow.[/page]";
	global.msg[1] = "[character,none,-1]* ...![delay,333] It was unplugged.[/page]";
	global.msg[2] = "[character,none,-1]* You nock the power outlet\n  again.";
	global.msg_esp[0] = "[character,none,-1]* Utilizas el secador y\n  decides utilizar su cable\n  como un arco.[/page]";
	global.msg_esp[1] = "[character,none,-1]* ¡...![delay,333] Lo has desenchufado.[/page]";
	global.msg_esp[2] = "[character,none,-1]* Vuelves a enchufar el cable.";
}
else
{
	global.msg[0] = "[character,none,-1]* Probably for the best.";
	global.msg_esp[0] = "[character,none,-1]* Seguramente sea lo mejor.";
}
show_debug_message(global.msg);
