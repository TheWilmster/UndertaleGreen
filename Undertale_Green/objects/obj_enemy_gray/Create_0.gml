_name = "* Gray";
alarm_set(4, 20);
global.save_photo = 12;
hair_frame = 0;
hair_anim = 0;
sinefunc = 0;
global.battle_bg = 0;
hp = 46;
maxhp = 46;
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
alarm_set(0, 5);
lute_side = 0;
battle_msg = 0;
