if (!instance_exists(obj_transition_screen))
{
	if (keyboard_check(vk_down) == true || keyboard_check(vk_up) || keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(ord("W")) || keyboard_check(ord("S")) || keyboard_check(ord("A")) || keyboard_check(ord("D")))
	{
		obj_player.visible = true;
		obj_player.curr_state = PlayerState.NORMAL;
		instance_destroy(self);
	}
}
