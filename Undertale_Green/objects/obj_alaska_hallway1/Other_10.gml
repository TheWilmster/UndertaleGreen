if (global.second_dia[1] == 0)
{
	global.msg[0] = "[character,alaska,neutral][delay,1]* What's up Olive.[/page]";
	global.msg[1] = "[character,alaska,disappointed][delay,1]* Are you good?[freeze][delay,333][continue]\n* You look worried.[/page]";
	global.msg[2] = "[character,none,-1][delay,1]* (You tell Alaska you want to\n  catch up to your sister.)[/page]";
	global.msg[3] = "[character,alaska,neutral][delay,1]* I'd say to just\n  give up.[/page]";
	global.msg[4] = "[character,alaska,smug][delay,1]* She's probably kicked\n  the bucket already.[/page]";
	global.msg[5] = "[character,none,-1][delay,1]* (You tell her that's not\n  true.)[/page]";
	global.msg[6] = "[character,alaska,smug][delay,1]* I wish it wasn't,[freeze][delay,333][continue]\n  kid.[/page]";
	global.msg[7] = "[character,alaska,smug][delay,1]* But look on the bright\n  side,[freeze][delay,333][continue] she had a good\n  run.[/page]";
	global.msg[8] = "[character,alaska,neutral][delay,1]* Well,[freeze][delay,333][continue] she had a fine\n  run.[/page]";
	global.msg[9] = "[character,alaska,neutral][delay,1]* Not a tough act to\n  follow.[/page]";
	global.msg[10] = "[character,alaska,disappointed][delay,1]* ...[/page]";
	global.msg[11] = "[character,alaska,neutral][delay,1]* If you're really lucky\n  she'll be doing her\n  job.[/page]";
	global.msg[12] = "[character,alaska,smug][delay,1]* For a stagehand she\n  barely puts her hand on\n  the stage.[/page]";
	global.msg[13] = "[character,alaska,neutral][delay,1]* ...[freeze][delay,333][continue]Aren't I a stagehand\n  too?[/page]";
	global.msg[14] = "[character,alaska,smug][delay,1]* Yeah,[freeze][delay,333][continue] but Grover covers\n  for me,[freeze][delay,333][continue] Kaitlyn,[freeze][delay,333][continue] and\n  Destiny.[/page]";
	global.msg[15] = "[character,alaska,smug][delay,1]* It's not a hard gig.[groverrun]";
	global.msg_esp[0] = "[character,alaska,neutral][delay,1]* Qué tal Olive.[/page]";
	global.msg_esp[1] = "[character,alaska,disappointed][delay,1]* ¿Estás bien?[freeze][delay,333][continue]\n* Se te ve con\n  preocupación.[/page]";
	global.msg_esp[2] = "[character,none,-1][delay,1]* (Le dices a Alaska que\n  quieres estar con tu\n  hermana.)[/page]";
	global.msg_esp[3] = "[character,alaska,neutral][delay,1]* Te aconsejo que te\n  rindas.[/page]";
	global.msg_esp[4] = "[character,alaska,smug][delay,1]* Seguramente haya estirado\n  la pata.[/page]";
	global.msg_esp[5] = "[character,none,-1][delay,1]* (Le dices que está\n  mintiendo.)[/page]";
	global.msg_esp[6] = "[character,alaska,smug][delay,1]* Ojalá no estuviese\n  mintiendo,[freeze][delay,333][continue] Olive.[/page]";
	global.msg_esp[7] = "[character,alaska,smug][delay,1]* Pero desde el lado\n  positivo,[freeze][delay,333][continue] ha tenido una\n  buena vida.[/page]";
	global.msg_esp[8] = "[character,alaska,neutral][delay,1]* Bueno,[freeze][delay,333][continue] ha tenido una\n  decente vida.[/page]";
	global.msg_esp[9] = "[character,alaska,neutral][delay,1]* Hubiera sido mejor si\n  me hubiera dado el\n  dinero que me debe.[/page]";
	global.msg_esp[10] = "[character,alaska,disappointed][delay,1]* ...[/page]";
	global.msg_esp[11] = "[character,alaska,neutral][delay,1]* Si te sientes con\n  suerte,[freeze][delay,333][continue] ella estará\n  donde tiene que estar.[/page]";
	global.msg_esp[12] = "[character,alaska,smug][delay,1]* Para ser tramoyista\n  sí que ayuda poco\n  con el espectáculo.[/page]";
	global.msg_esp[13] = "[character,alaska,neutral][delay,1]* ...[freeze][delay,333][continue]¿Que si no debería\n  de estar ayudándola?[/page]";
	global.msg_esp[14] = "[character,alaska,smug][delay,1]* Seh,[freeze][delay,333][continue] pero Grover me\n  cubre,[freeze][delay,333][continue] y Kaitlyn,[freeze][delay,333][continue] y\n  Destiny.[/page]";
	global.msg_esp[15] = "[character,alaska,smug][delay,1]* No es un curro dificil.[groverrun]";
	global.stagehand[0] = 1;
	instance_create_depth(1084, 437, -bbox_bottom, obj_stagehand);
	instance_create_depth(1084, 456, -bbox_bottom, obj_stagehand_hb);
}
if (global.second_dia[1] == 1)
{
	global.msg[0] = "[character,alaska,neutral][delay,1]* You should be able to\n  get backstage through\n  the Greenroom.[/page]";
	global.msg[1] = "[character,alaska,neutral][delay,1]* You'll need a keycard\n  though.[/page]";
	global.msg[2] = "[character,alaska,disappointed][delay,1]* If you're wondering if\n  you can borrow mine,[freeze][delay,333][continue]\n  ask someone else.[/page]";
	global.msg[3] = "[character,alaska,smug][delay,1]* I lost mine a while\n  ago.[/page]";
	global.msg[4] = "[character,alaska,disappointed][delay,1]* Now if you'll excuse me,[freeze][delay,333][continue]\n  I'm saving up energy\n  for a party tonight.";
	global.msg_esp[0] = "[character,alaska,neutral][delay,1]* Deberías de poder\n  llegar a los bastidores\n  desde la sala verde.[/page]";
	global.msg_esp[1] = "[character,alaska,neutral][delay,1]* Vas a necesitar una\n  tarjeta,[freeze][delay,333][continue] por desgracia.[/page]";
	global.msg_esp[2] = "[character,alaska,disappointed][delay,1]* Si te preguntas si\n  puedes tomar la mía,[freeze][delay,333][continue]\n  pregunta a otro.[/page]";
	global.msg_esp[3] = "[character,alaska,smug][delay,1]* La mía la perdí hace\n  siglos.[/page]";
	global.msg_esp[4] = "[character,alaska,disappointed][delay,1]* Ahora vete a jugar o algo,[freeze][delay,333][continue]\n  Necesito mi mejor versión\n  para la fiesta de hoy.";
}
global.second_dia[1] = 1;
instance_create_depth(x, y, -1000, obj_textboxNEW);
