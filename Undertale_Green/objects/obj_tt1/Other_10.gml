global.talking = self;
global.save_photo = 23;
DIALOG[0] = "[character,none,-1][delay,1]* It's me Barry,[freeze][delay,333][continue] the first of\n  the Terror Triplets![/page]";
DIALOG[1] = "[character,none,-1]* Each of us is more horrible\n  than the last!";
DIALOG_ESP[0] = "[character,none,-1][delay,1]* ¡Soy yo Barry,[freeze][delay,333][continue] el primero del\n  Trío del Terror![/page]";
DIALOG_ESP[1] = "[character,none,-1]* ¡Cada uno es peor que el\n  anterior!";
instance_create_depth(x, y, -1000, obj_textboxNEW);
