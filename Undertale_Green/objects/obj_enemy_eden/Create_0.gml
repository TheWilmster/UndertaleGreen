_name = "* Eden";
global.battle_bg = 1;
misscount = 0;
global.save_photo = 11;
hp = 36;
maxhp = 36;
opacity_change = 0;
opacity_change2 = 0;
atk = 5;
def = 2;
if (global.eden_first_time == true)
{
	audio_play_sound(snd_rain_inside, 2, true);
	global.gray_buttons = true;
	tutorial = true;
}
else
{
	tutorial = false;
}
intro_progress = 110;
song_progress = 2857;
t_f = 0;
if (global.eden_first_time == true)
	song_start = 0;
else
	song_start = 1;
battle_image = spr_enemy_eden_head;
normal_img = -1;
hurt_img = spr_enemy_test_hurt;
img_bounce = 0;
down = 1;
up = 0;
inc = 0.05;
spr_body_vscale = 2;
siner = 0;
atk_choice = -1;
prev_choice = 0;
global.random_atk = false;
randomize();
atk_list = array_create(5, 1);
for (var i = 0; i < array_length(atk_list); i += 1)
	atk_list[i] = i + 1;
atk_list = array_shuffle(atk_list);
if (atk_list[0] == 5)
{
	array_delete(atk_list, 0, 1);
	array_push(atk_list, 5);
}
dead = false;
spr_w = 94;
spr_h = 198;
alarm_set(0, 5);
lute_side = 0;
if (global.eden_first_time == true)
	battle_msg = 0;
else
	battle_msg = 1;
