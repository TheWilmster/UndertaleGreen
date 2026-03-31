playtester_mode = false;
enter_plush = false;
prev_room = room;
time_elapsed = 0;
conductor_count = 1;
conductor_beat = 1;
office_camgodown = false;
office_camgoup = false;

if (room == loadingRoom)
{
	check_drumroll = true;
	curr_state = PlayerState.INTERACT;
}
else
{
	check_drumroll = false;
}
parse_items();
game_set_speed(30, gamespeed_fps);
cam_offset_x = 0;
cam_offset_y = 0;
hwalkspeed = 3;
vwalkspeed = 3;
pressed = false;
left_side = false;
facing = 0;
start_anim = false;
pressdir = -1;
interact_d = -1;
interact_r = -1;
interact_u = -1;
interact_l = -1;
forestspeed = 0;
min_view_x = 0;
min_view_y = 0;
offset = 20;
depth = -bbox_bottom;
global.cut1mvt1 = false;
global.cut1mvt2 = false;
global.olive_walk1 = false;
global.slide = false;
global.merge = false;
global.cutscene_battle_start = false;
global.eden_battle_started = false;
global.left_side = false;
walk_out_car = false;
cam_go_down = 0;
cam_go_up = false;
cam_go_down2 = false;
cam_go_down3 = false;
walk_down = 0;
shake = 0;
return_to_player = false;
global.rat_start = false;
global.rat_ride = false;
global.rat_ride_end = false;
jump_start = false;
jump_start2 = false;
jumped_on = false;
jumped_on2 = false;
get_up = false;
height_test = false;
vent_jump = false;
v_start = false;
in_car = true;
walk_alarm = false;
follow_chai = false;
chaialogue = false;
hop_on_bench = false;
start_hop = false;
top_of_hop = false;
olive_sit = false;
dw_walkright = false;
dw_walkup = false;
