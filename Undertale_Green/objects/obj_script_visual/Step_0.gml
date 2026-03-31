alpha += 0.2;
if (vspeed < 0)
	vspeed += 0.5;
else
	vspeed = 0;
instance_destroy(obj_menu);
cancel = keyboard_check_pressed(ord("X"));
if (cancel)
{
	instance_destroy(self);
	obj_player.curr_state = PlayerState.NORMAL;
}
