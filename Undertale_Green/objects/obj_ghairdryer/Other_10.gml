DIALOG[0] = "[character,none,-1][delay,1]* It's a hair dryer.[/page]";
DIALOG[1] = "[character,none,-1]* Use it?[choice]";
DIALOG_ESP[0] = "[character,none,-1][delay,1]* Es un secador.[/page]";
DIALOG_ESP[1] = "[character,none,-1]*¿Lo utilizas?[choice]";
global.choices[0] = "[character,none,-1]\nYes";
global.choices[1] = "[character,none,-1]\nNo";
global.choices_esp[0] = "[character,none,-1]\nSí";
global.choices_esp[1] = "[character,none,-1]\nNo";
instance_create_depth(x, y, -1000, obj_textboxNEW);
