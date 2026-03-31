obj_player.curr_state = PlayerState.INTERACT;
obj_player.facing = 0;
if (trailercont1 == true && !instance_exists(obj_textboxNEW))
{
	alarm_set(1, 50);
	obj_olive_clash.sprite_index = spr_olive_right;
	trailercont1 = false;
}
if (trailercont2 == true && !instance_exists(obj_textboxNEW))
{
	alarm_set(2, 130);
	alarm_set(4, 100);
	alarm_set(8, 80);
	trailercont2 = false;
}
if (trailercont3 == true && !instance_exists(obj_textboxNEW))
{
	alarm_set(3, 100);
	obj_chai_trailer.walk_out = true;
	trailercont3 = false;
	alarm_set(7, 50);
}
if (trailercont4 == true && !instance_exists(obj_textboxNEW))
{
	alarm_set(5, 30);
	alarm_set(6, 40);
	trailercont4 = false;
}
