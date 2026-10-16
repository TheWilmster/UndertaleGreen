DIALOG[0] = "[character,none,-1][delay,1]* (Looks like there's only one\n  option.)[/page]";
DIALOG[1] = "[character,none,-1][delay,1]* Hop on?[choice]";
DIALOG_ESP[0] = "[character,none,-1][delay,1]* (Parece que solo queda\n  una opción.)[/page]";
DIALOG_ESP[1] = "[character,none,-1][delay,1]* ¿Te montas?[choice]";
global.choices[0] = "[character,none,-1]\nYes";
global.choices[1] = "[character,none,-1]\nNo";
global.choices_esp[0] = "[character,none,-1]\nSí";
global.choices_esp[1] = "[character,none,-1]\nNo";
instance_create_depth(x, y, -1000, obj_textboxNEW);
