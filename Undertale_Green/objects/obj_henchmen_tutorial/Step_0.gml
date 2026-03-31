if (chai_dia == true)
{
	global.msg[0] = "[battleface,chai,concerned][c_black]...[freeze][delay,333][continue]Yeah I guess it\nis kinda lame\nhaving people work\nfor you.[/page]";
	global.msg[1] = "[battleface,chai,normal][c_black]But we can still\nwork together![freeze][delay,333][continue]\nWe'll be\nunstoppable!";
	instance_create_depth(obj_enemy_chai.x + obj_enemy_chai.spr_w, obj_enemy_chai.y - obj_enemy_chai.spr_h, obj_enemy_chai.depth - 1, obj_enemy_text);
	chai_dia = false;
}
if (chai_talk == true)
{
	obj_battle_system.timer = 300;
	if (!instance_exists(obj_enemy_text))
	{
		chai_talk = false;
		instance_create_depth(0, 0, -5000, obj_gemfall_control);
		obj_enemy_soldier.bullet_spawn = false;
	}
}
