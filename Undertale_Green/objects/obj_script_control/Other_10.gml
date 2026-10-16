DIALOG[0] = "[character,none,-1][delay,1]* A large binder lies on the\n  table.[/page]";
DIALOG[1] = "[character,none,-1][delay,1]* Open it?[choice]";
global.choices[0] = "[character,none,-1]\nYes";
global.choices[1] = "[character,none,-1]\nNo";
instance_create_depth(x, y, -1000, obj_textboxNEW);
