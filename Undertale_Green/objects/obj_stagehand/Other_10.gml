if (room == rm_hallway1)
{
	global.stagehand = [0, 1, 1, 1, 1, 0];
	DIALOG[0] = "[character,none,-1][delay,1]* NO TIME KID[/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* THOSE FOUR SLACKERS LEFT ME\n  TO DO ALL THE BACKSTAGE WORK[/page]";
	DIALOG[2] = "[character,none,-1][delay,1]* I'M MAKING UP FOR LOST TIME[/page]";
	DIALOG[3] = "[character,none,-1][delay,1]* EVERYONE IS COUNTING ON ME";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* NO QUEDA TIEMPO[/page]";
	DIALOG_ESP[1] = "[character,none,-1][delay,1]* ESOS GANDULES ME ABANDONARON\n  A HACER TODO EL TRABAJO[/page]";
	DIALOG_ESP[2] = "[character,none,-1][delay,1]* APENAS ME QUEDA TIEMPO[/page]";
	DIALOG_ESP[3] = "[character,none,-1][delay,1]* TODOS CUENTAN CONMIGO";
}
if (room == rm_greenroom)
{
	global.stagehand[1] = 0;
	DIALOG[0] = "[character,none,-1][delay,1]* NO TIME KID[/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* THEY MADE ME GO GET HARVEY\n  TO MAKE SURE HE'S ON STAGE IN\n  TWO MINUTES[/page]";
	DIALOG[2] = "[character,none,-1][delay,1]* THAT WAS TEN MINUTES AGO[/page]";
	DIALOG[3] = "[character,none,-1][delay,1]* WHO'S HARVEY";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* NO QUEDA TIEMPO[/page]";
	DIALOG_ESP[1] = "[character,none,-1][delay,1]* ME HICIERON IR A POR HARVEY\n  ME HICIERON IR A BUSCARLO PORQUE\n  NECESITA ACTUAR EN DOS MINUTOS[/page]";
	DIALOG_ESP[2] = "[character,none,-1][delay,1]* ESO FUE HACE DIEZ MINUTOS[/page]";
	DIALOG_ESP[3] = "[character,none,-1][delay,1]* QUIEN ES HARVEY";
}
if (room == rm_auditorium)
{
	global.stagehand[2] = 0;
	DIALOG[0] = "[character,none,-1][delay,1]* NO TIME KID[/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* THEY'RE MAKING ME COLLECT A\n  SURVEY OF WHAT PEOPLE THINK\n  ABOUT THE PERFORMANCE SO FAR[/page]";
	DIALOG[2] = "[character,none,-1][delay,1]* ...[/page]";
	DIALOG[3] = "[character,none,-1][delay,1]* SO HOW IS IT";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* NO QUEDA TIEMPO[/page]";
	DIALOG_ESP[1] = "[character,none,-1][delay,1]* ME ESTÁN HACIENDO LLEVAR A\n  CABO UNA ENCUESTA POPULAR DE\n  CÓMO ESTÁ YENDO EL TEATRO[/page]";
	DIALOG_ESP[2] = "[character,none,-1][delay,1]* ...[/page]";
	DIALOG_ESP[3] = "[character,none,-1][delay,1]* ENTONCES... QUE TAL TE PARECE";
}
if (room == rm_pitorch)
{
	global.stagehand[3] = 0;
	DIALOG[0] = "[character,none,-1][delay,1]* NO TIME KID[/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* THEY MADE ME GO GET\n  BOOMWHACKERS FOR THE PIT\n  ORCHESTRA[/page]";
	DIALOG[2] = "[character,none,-1][delay,1]* COME ON NOW[/page]";
	DIALOG[3] = "[character,none,-1][delay,1]* THAT CANNOT BE REAL";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* NO QUEDA TIEMPO[/page]";
	DIALOG_ESP[1] = "[character,none,-1][delay,1]* ME HICIERON IR A POR\n  UNOS TUBOS MUSICALES PARA\n  LA ORQUESTA[/page]";
	DIALOG_ESP[2] = "[character,none,-1][delay,1]* VENGA YA[/page]";
	DIALOG_ESP[3] = "[character,none,-1][delay,1]* SE LO TIENEN QUE ESTAR INVENTANDO";
}
if (room == rm_backstage)
{
	global.stagehand[4] = 0;
	DIALOG[0] = "[character,none,-1][delay,1]* NO TIME KID[/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* THEY'RE MAKING ME DO THE LIGHTS\n  AND THE PULLEYS AND THE SCENE\n  TRANSITIONS[/page]";
	DIALOG[2] = "[character,none,-1][delay,1]* WHERE DID ALL THE SCENES GO";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* NO QUEDA TIEMPO[/page]";
	DIALOG_ESP[1] = "[character,none,-1][delay,1]* ME TIENEN COMO EL DE LA\n  LUZ EL DE LAS POLEAS EL\n  DE LOS INTERLUDIOS[/page]";
	DIALOG_ESP[2] = "[character,none,-1][delay,1]* DONDE SE HAN IDO LAS ESCENAS";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
