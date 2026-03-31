progress = -1;
timer = -1;
global.msg[0] = "[character,gray,surprised][delay,1]* And I'll be very\n  persuasive at dinner\n  tonight![/page]";
global.msg[1] = "[character,gray,surprised][delay,1]* Your dad will have\n  my head if I'm not\n  on stage, like...[/page]";
global.msg[2] = "[character,gray,surprised][delay,1]* ...a minute ago.[advance2]";
global.msg_esp[0] = "[character,gray,surprised][delay,1]* ¡Y seré muy persuasivo\n  en la cena de esta\n  noche![/page]";
global.msg_esp[1] = "[character,gray,surprised][delay,1]* Tu padre me cortará\n  la cabeza como no\n  vaya al escenario...[/page]";
global.msg_esp[2] = "[character,gray,surprised][delay,1]* ...en ya hace un minuto.[advance2]";
instance_create_depth(x, y, -1000, obj_textboxNEW);
