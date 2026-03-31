if (global.school_time_sequence == 0)
{
	global.msg[0] = "[character,none,-1][delay,1]* It's some pictures of Chai and\n  her friends.[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* ...[delay,333]And some other people.";
}
if (global.school_time_sequence == 1)
{
	global.msg[0] = "[character,none,-1][delay,1]* It's some pictures of Chai and\n  her friends.[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* ...[delay,333]And Eden.[/page]";
	global.msg[2] = "[character,none,-1][delay,1]* ...[delay,333]And some other people.";
}
if (global.school_time_sequence == 2)
{
	global.msg[0] = "[character,none,-1][delay,1]* It's some pictures of Chai and\n  her friends.[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* ...[delay,333]And Eden.[/page]";
	global.msg[2] = "[character,none,-1][delay,1]* ...[delay,333]And Gray.[/page]";
	global.msg[3] = "[character,none,-1][delay,1]* ...[delay,333]And some other people.";
}
if (global.school_time_sequence == 3)
{
	global.msg[0] = "[character,none,-1][delay,1]* It's some pictures of Chai and\n  her friends.[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* ...[delay,333]And Eden.[/page]";
	global.msg[2] = "[character,none,-1][delay,1]* ...[delay,333]And Gray.[/page]";
	global.msg[3] = "[character,none,-1][delay,1]* ...[delay,333]And some other people.";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
