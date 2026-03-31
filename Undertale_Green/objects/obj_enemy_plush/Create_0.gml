_name = "* ???";
startmusic = false;
heartbeat_false = false;
global.save_photo = 18;
draw_x = x;
draw_y = (room_width / 2) - 70;
image_index = 0;
image_speed = 0;
depth = -99999999999999;
sinefunc = 0;
global.battle_bg = 0;
fallsfx = false;
getbackup = false;
hp = 50;
maxhp = 50;
opacity_change = 0;
opacity_change2 = 0;
side_choice = 0;
atk = 5;
def = 2;
dead = false;
battle_image = spr_enemy_gray_head;
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
atk_list = array_create(7, 1);
for (var i = 0; i < array_length(atk_list); i += 1)
	atk_list[i] = i + 1;
atk_list = array_shuffle(atk_list);
if (atk_list[0] == 7)
{
	array_delete(atk_list, 0, 1);
	array_push(atk_list, 7);
}
spr_w = 94;
spr_h = 198;
battle_msg = 0;
fall = false;
