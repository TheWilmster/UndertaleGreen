progress = -1;
timer = -1;
DIALOG[0] = "[character,gray,surprised][delay,1]* And I'll be very\n  persuasive at dinner\n  tonight![/page]";
DIALOG[1] = "[character,gray,surprised][delay,1]* Your dad will have\n  my head if I'm not\n  on stage, like...[/page]";
DIALOG[2] = "[character,gray,surprised][delay,1]* ...a minute ago.[advance2]";
DIALOG_ESP[0] = "[character,gray,surprised][delay,1]* ¡Y seré muy persuasivo\n  en la cena de esta\n  noche![/page]";
DIALOG_ESP[1] = "[character,gray,surprised][delay,1]* Tu padre me cortará\n  la cabeza como no\n  vaya al escenario...[/page]";
DIALOG_ESP[2] = "[character,gray,surprised][delay,1]* ...en ya hace un minuto.[advance2]";
instance_create_depth(x, y, -1000, obj_textboxNEW);
