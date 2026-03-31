if (room == rm_hallway1)
{
	global.stagehand = [0, 1, 1, 1, 1, 0];
	global.msg[0] = "[character,none,-1][delay,1]* NO TIME KID[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* THOSE FOUR SLACKERS LEFT ME\n  TO DO ALL THE BACKSTAGE WORK[/page]";
	global.msg[2] = "[character,none,-1][delay,1]* I'M MAKING UP FOR LOST TIME[/page]";
	global.msg[3] = "[character,none,-1][delay,1]* EVERYONE IS COUNTING ON ME";
	global.msg_esp[0] = "[character,none,-1][delay,1]* NO QUEDA TIEMPO[/page]";
	global.msg_esp[1] = "[character,none,-1][delay,1]* ESOS GANDULES ME ABANDONARON\n  A HACER TODO EL TRABAJO[/page]";
	global.msg_esp[2] = "[character,none,-1][delay,1]* APENAS ME QUEDA TIEMPO[/page]";
	global.msg_esp[3] = "[character,none,-1][delay,1]* TODOS CUENTAN CONMIGO";
}
if (room == rm_greenroom)
{
	global.stagehand[1] = 0;
	global.msg[0] = "[character,none,-1][delay,1]* NO TIME KID[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* THEY MADE ME GO GET HARVEY\n  TO MAKE SURE HE'S ON STAGE IN\n  TWO MINUTES[/page]";
	global.msg[2] = "[character,none,-1][delay,1]* THAT WAS TEN MINUTES AGO[/page]";
	global.msg[3] = "[character,none,-1][delay,1]* WHO'S HARVEY";
	global.msg_esp[0] = "[character,none,-1][delay,1]* NO QUEDA TIEMPO[/page]";
	global.msg_esp[1] = "[character,none,-1][delay,1]* ME HICIERON IR A POR HARVEY\n  ME HICIERON IR A BUSCARLO PORQUE\n  NECESITA ACTUAR EN DOS MINUTOS[/page]";
	global.msg_esp[2] = "[character,none,-1][delay,1]* ESO FUE HACE DIEZ MINUTOS[/page]";
	global.msg_esp[3] = "[character,none,-1][delay,1]* QUIEN ES HARVEY";
}
if (room == rm_auditorium)
{
	global.stagehand[2] = 0;
	global.msg[0] = "[character,none,-1][delay,1]* NO TIME KID[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* THEY'RE MAKING ME COLLECT A\n  SURVEY OF WHAT PEOPLE THINK\n  ABOUT THE PERFORMANCE SO FAR[/page]";
	global.msg[2] = "[character,none,-1][delay,1]* ...[/page]";
	global.msg[3] = "[character,none,-1][delay,1]* SO HOW IS IT";
	global.msg_esp[0] = "[character,none,-1][delay,1]* NO QUEDA TIEMPO[/page]";
	global.msg_esp[1] = "[character,none,-1][delay,1]* ME ESTÁN HACIENDO LLEVAR A\n  CABO UNA ENCUESTA POPULAR DE\n  CÓMO ESTÁ YENDO EL TEATRO[/page]";
	global.msg_esp[2] = "[character,none,-1][delay,1]* ...[/page]";
	global.msg_esp[3] = "[character,none,-1][delay,1]* ENTONCES... QUE TAL TE PARECE";
}
if (room == rm_pitorch)
{
	global.stagehand[3] = 0;
	global.msg[0] = "[character,none,-1][delay,1]* NO TIME KID[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* THEY MADE ME GO GET\n  BOOMWHACKERS FOR THE PIT\n  ORCHESTRA[/page]";
	global.msg[2] = "[character,none,-1][delay,1]* COME ON NOW[/page]";
	global.msg[3] = "[character,none,-1][delay,1]* THAT CANNOT BE REAL";
	global.msg_esp[0] = "[character,none,-1][delay,1]* NO QUEDA TIEMPO[/page]";
	global.msg_esp[1] = "[character,none,-1][delay,1]* ME HICIERON IR A POR\n  UNOS TUBOS MUSICALES PARA\n  LA ORQUESTA[/page]";
	global.msg_esp[2] = "[character,none,-1][delay,1]* VENGA YA[/page]";
	global.msg_esp[3] = "[character,none,-1][delay,1]* SE LO TIENEN QUE ESTAR INVENTANDO";
}
if (room == rm_backstage)
{
	global.stagehand[4] = 0;
	global.msg[0] = "[character,none,-1][delay,1]* NO TIME KID[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* THEY'RE MAKING ME DO THE LIGHTS\n  AND THE PULLEYS AND THE SCENE\n  TRANSITIONS[/page]";
	global.msg[2] = "[character,none,-1][delay,1]* WHERE DID ALL THE SCENES GO";
	global.msg_esp[0] = "[character,none,-1][delay,1]* NO QUEDA TIEMPO[/page]";
	global.msg_esp[1] = "[character,none,-1][delay,1]* ME TIENEN COMO EL DE LA\n  LUZ EL DE LAS POLEAS EL\n  DE LOS INTERLUDIOS[/page]";
	global.msg_esp[2] = "[character,none,-1][delay,1]* DONDE SE HAN IDO LAS ESCENAS";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
