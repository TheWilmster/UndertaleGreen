if (neckdialogue == false)
{
	global.msg[0] = "[character,chai,disappointed][delay,1]* Took you long enough.[/page]";
	global.msg[1] = "[character,chai,neutral][delay,1]* Get in the back seat,[freeze][delay,333][continue]\n  alright?[freeze][delay,333][continue] It's gonna be a\n  little cramped.[/page]";
	global.msg[2] = "[character,chai,remorseful][delay,1]* ...[/page]";
	global.msg[3] = "[character,chai,remorseful][delay,1]* Sorry.[carnightcut]";
	global.msg_esp[0] = "[character,chai,disappointed][delay,1]* Has tardado bastante.[/page]";
	global.msg_esp[1] = "[character,chai,neutral][delay,1]* Siéntate atrás,[freeze][delay,333][continue]\n  ¿vale?[freeze][delay,333][continue] It's gonna be a\n  little cramped.[/page]";
	global.msg_esp[2] = "[character,chai,remorseful][delay,1]* ...[/page]";
	global.msg_esp[3] = "[character,chai,remorseful][delay,1]* Lo siento.[carnightcut]";
}
else
{
	global.msg[0] = "[character,chai,disappointed][delay,1]* Took you long enough.[/page]";
	global.msg[1] = "[character,chai,neutral][delay,1]* Get in the back seat,[freeze][delay,333][continue]\n  alright?[freeze][delay,333][continue] It's gonna be a\n  little cramped.[/page]";
	global.msg[2] = "[character,chai,neutral][delay,1]* ...[/page]";
	global.msg[3] = "[character,chai,disappointed][delay,1]* Eden's house?[freeze][delay,333][continue]\n* A necklace?[/page]";
	global.msg[4] = "[character,chai,remorseful][delay,1]* Not now,[freeze][delay,333][continue] Olive.[/page]";
	global.msg[5] = "[character,chai,neutral][delay,1]* You'll have to find\n  someone else to take\n  you.[/page]";
	global.msg[6] = "[character,chai,remorseful][delay,1]* Just get in,[freeze][delay,333][continue] alright?[carnightcut]";
	global.msg_esp[0] = "[character,chai,disappointed][delay,1]* Has tardado bastante.[/page]";
	global.msg_esp[1] = "[character,chai,neutral][delay,1]* Siéntate atrás,[freeze][delay,333][continue]\n  ¿vale?[freeze][delay,333][continue] It's gonna be a\n  little cramped.[/page]";
	global.msg_esp[2] = "[character,chai,remorseful][delay,1]* ...[/page]";
	global.msg_esp[3] = "[character,chai,disappointed][delay,1]* ¿La casa de Eden?[freeze][delay,333][continue]\n* ¿Un collar?[/page]";
	global.msg_esp[4] = "[character,chai,remorseful][delay,1]* Ahora no,[freeze][delay,333][continue] Olive.[/page]";
	global.msg_esp[5] = "[character,chai,neutral][delay,1]* Vas a tener que\n  encontrar a otro que\n  te lleve.[/page]";
	global.msg_esp[6] = "[character,chai,remorseful][delay,1]* Siéntate ya,[freeze][delay,333][continue] ¿vale?[carnightcut]";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
