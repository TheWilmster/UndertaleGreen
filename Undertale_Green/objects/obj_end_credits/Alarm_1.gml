if (global.eden_drivewaycut == true)
{
	DIALOG[0] = "[character,uni,-1][delay,1]* AND THAT'S IT?[delay,333]\n* NOTHING ELSE HAPPENED?[/page]";
	DIALOG[1] = "[character,linguet,-1][delay,1]* And that's it?[delay,333]\n* Nothing else happened?[/page]";
	DIALOG[2] = "[character,uni,-1][delay,1]* YOU THOUGHT YOU SAW A\n  MAN IN THE WOODS,[delay,333] SURE.[/page]";
	DIALOG[3] = "[character,uni,-1][delay,1]* BUT WAS THERE ANYTHING\n  ELSE?[/page]";
	DIALOG[4] = "[character,linguet,-1][delay,1]* Did you see anything else?[/page]";
	DIALOG[5] = "[character,none,-1][delay,1]* (You tell him you don't\n  think so.)[/page]";
	DIALOG[6] = "[character,uni,-1][delay,1]* IF YOU'RE GONNA LIE,[delay,333] AT\n  LEAST COMMIT TO IT.[/page]";
	DIALOG[7] = "[character,linguet,-1][delay,1]* ...[delay,333]He doesn't believe you.[/page]";
	DIALOG[8] = "[character,uni,-1][delay,1]* TELL THEM HOW IMPORTANT\n  THIS IS.[/page]";
	DIALOG[9] = "[character,uni,-1][delay,1]* DIG IN THE KNIFE A LITTLE\n  IF YOU GOTTA.[/page]";
	DIALOG[10] = "[character,linguet,-1][delay,1]* This is very important\n  information.[/page]";
	DIALOG[11] = "[character,linguet,-1][delay,1]* I understand your situation\n  but we are all depending\n  on you right now.[/page]";
	DIALOG[12] = "[character,linguet,-1][delay,1]* Please do try again.[/page]";
	DIALOG[13] = "[character,linguet,-1][delay,1]* Are you absolutely sure there's\n  nothing you're missing?[reset]";
}
else
{
	DIALOG[0] = "[character,uni,-1][delay,1]* THAT HAS TO BE HER.[/page]";
	DIALOG[1] = "[character,linguet,-1][delay,1]* That has to be-[/page]";
	DIALOG[2] = "[character,uni,-1][delay,1]* DON'T TRANSLATE THAT![delay,333]\n* NOW I HAVE TO DEAL WITH\n  THIS TOO...[/page]";
	DIALOG[3] = "[character,uni,-1][delay,1]* BIG MAN IS GONNA BE\n  PISSED.[/page]";
	DIALOG[4] = "[character,uni,-1][delay,1]* MAKE SOMETHING UP,[delay,333] I\n  GOTTA DO SOME DAMAGE\n  CONTROL.[/page]";
	DIALOG[5] = "[character,linguet,-1][delay,1]* Uhh...[delay,333]\n* Well,[delay,333] he's off to make some\n  tea.[/page]";
	DIALOG[6] = "[character,uni,-1][delay,1]* BANG UP JOB MAN,[delay,333] YOU\n  KILLED IT.[delay,333]\n* SOUNDS JUST LIKE ME.[/page]";
	DIALOG[7] = "[character,linguet,-1][delay,1]* ...![/page]";
	DIALOG[8] = "[character,linguet,-1][delay,1]* Thank you for telling us\n  everything,[delay,333] Olive.[/page]";
	DIALOG[9] = "[character,linguet,-1][delay,1]* I know this wasn't easy for\n  you.[/page]";
	DIALOG[10] = "[character,none,-1][delay,1]* (You ask him what we're doing\n  now.)[/page]";
	DIALOG[11] = "[character,linguet,-1][delay,1]* Now?[/page]";
	DIALOG[12] = "[character,linguet,-1][delay,1]* Well now,[delay,333] we wait.[reset]";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
