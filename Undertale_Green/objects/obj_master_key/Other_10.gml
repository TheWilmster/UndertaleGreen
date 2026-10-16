DIALOG[0] = "[character,none,-1]* There's a set of keys on\n  the desk.[/page]";
DIALOG[1] = "[character,none,-1]* Pick them up?[choice]";
DIALOG_ESP[0] = "[character,none,-1]* Hay un llavero sobre el\n  escritorio.[/page]";
DIALOG_ESP[1] = "[character,none,-1]* ¿Te las llevas?[choice]";
global.choices[0] = "[character,none,-1]\nYes";
global.choices[1] = "[character,none,-1]\nNo";
global.choices_esp[0] = "[character,none,-1]\nSí";
global.choices_esp[1] = "[character,none,-1]\nNo";
instance_create_depth(x, y, -1000, obj_textboxNEW);
