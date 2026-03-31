function scr_owsprite(arg0, arg1)
{
	switch (arg0)
	{
		case "eden":
			if (arg1 == "default")
				obj_eden.image_index = 0;
			if (arg1 == "unammused")
				obj_eden.image_index = 1;
			if (arg1 == "shocked")
				obj_eden.image_index = 2;
			if (arg1 == "tweakin")
				obj_eden.image_index = 3;
			if (arg1 == "happy")
				obj_eden.image_index = 5;
			if (arg1 == "dramatic")
				obj_eden.image_index = 6;
			if (arg1 == "crynorm")
				obj_eden_cry.image_index = 2;
			if (arg1 == "crysmile")
				obj_eden_cry.image_index = 3;
			if (arg1 == "cryangry")
				obj_eden_cry.image_index = 4;
			if (arg1 == "cryblink")
				obj_eden_cry.image_index = 5;
			if (arg1 == "crysurp")
				obj_eden_cry.image_index = 6;
			if (arg1 == "cryhands")
				obj_eden_cry.image_index = 1;
			if (arg1 == "dead1")
			{
				obj_eden.image_index = 7;
				audio_play_sound(snd_hurt1_c, 1, false);
			}
			if (arg1 == "dead2")
				obj_eden.image_index = 8;
			if (arg1 == "dead3")
				obj_eden.image_index = 7;
			if (arg1 == "plush0")
			{
				obj_player_dummy3.sprite_index = spr_plush_post_expression;
				obj_player_dummy3.image_index = 0;
			}
			if (arg1 == "plush1")
			{
				obj_player_dummy3.sprite_index = spr_plush_post_expression;
				obj_player_dummy3.image_index = 1;
			}
			if (arg1 == "plush2")
			{
				obj_player_dummy3.sprite_index = spr_plush_post_expression;
				obj_player_dummy3.image_index = 2;
			}
			if (arg1 == "plush3")
			{
				obj_player_dummy3.sprite_index = spr_plush_post_expression;
				obj_player_dummy3.image_index = 3;
			}
			if (arg1 == "plush4")
			{
				obj_player_dummy3.sprite_index = spr_plush_post_expression;
				obj_player_dummy3.image_index = 4;
			}
			break;
		case "gray":
			if (arg1 == "default")
				obj_gray.image_index = 0;
			if (arg1 == "surprised")
				obj_gray.image_index = 1;
			if (arg1 == "smug")
				obj_gray.image_index = 2;
			break;
		case "grandma":
			if (arg1 == "normal")
				obj_grandma.image_index = 0;
			if (arg1 == "evil")
				obj_grandma.image_index = 1;
			break;
		case "gray_gr":
			if (arg1 == "default")
				obj_gray_greenroom.image_index = 0;
			if (arg1 == "left")
				obj_gray_greenroom.image_index = 1;
			if (arg1 == "phone")
				obj_gray_greenroom.image_index = 2;
			if (arg1 == "dramatic")
				obj_gray_greenroom.image_index = 3;
			if (arg1 == "surprised")
				obj_gray_greenroom.image_index = 4;
			if (arg1 == "happy")
				obj_gray_greenroom.image_index = 5;
			if (arg1 == "mad")
				obj_gray_greenroom.image_index = 6;
			if (arg1 == "otherleft")
				obj_gray_greenroom.sprite_index = spr_gray_l;
			if (arg1 == "right")
				obj_gray_greenroom.sprite_index = spr_gray_r;
			break;
		case "gray_bs":
			if (arg1 == "default")
				obj_gray_backstage.image_index = 0;
			if (arg1 == "curious")
				obj_gray_backstage.image_index = 1;
			if (arg1 == "smile")
				obj_gray_backstage.image_index = 2;
			if (arg1 == "smug")
				obj_gray_backstage.image_index = 3;
			if (arg1 == "serious")
				obj_gray_backstage.image_index = 4;
			if (arg1 == "flustered")
				obj_gray_backstage.image_index = 5;
			if (arg1 == "laughter")
				obj_gray_backstage.image_index = 6;
			break;
		case "chai":
			if (arg1 == "down")
				obj_chai_greenroom.sprite_index = spr_chai_down;
			if (arg1 == "left")
				obj_chai_greenroom.sprite_index = spr_chai_left;
			if (arg1 == "normal")
				obj_chai_greenroom.image_index = 0;
			if (arg1 == "scared")
				obj_chai_greenroom.image_index = 1;
			if (arg1 == "sad")
				obj_chai_greenroom.image_index = 2;
			if (arg1 == "sit")
				obj_chai_forest_bench.image_index = 0;
			if (arg1 == "eyeroll")
				obj_chai_forest_bench.image_index = 1;
			if (arg1 == "surprise")
				obj_chai_forest_bench.image_index = 2;
			if (arg1 == "tears")
				obj_chai_forest_bench.image_index = 3;
			if (arg1 == "cry")
				obj_chai_forest_bench.image_index = 4;
			if (arg1 == "blink")
				obj_chai_forest_bench.image_index = 5;
			if (arg1 == "anger")
				obj_chai_forest_bench.image_index = 6;
			if (arg1 == "angerlook")
				obj_chai_forest_bench.image_index = 7;
			if (arg1 == "tearslook")
				obj_chai_forest_bench.image_index = 8;
			if (arg1 == "look")
				obj_chai_forest_bench.image_index = 8;
			if (arg1 == "look2")
				obj_chai_forest_bench.image_index = 9;
			if (arg1 == "smile")
				obj_chai_forest_bench.image_index = 10;
			if (arg1 == "calming")
				obj_chai_forest.image_index = 0;
			break;
		case "alaska":
			if (arg1 == "up")
				obj_alaska_greenroom.image_index = 1;
			if (arg1 == "normal")
				obj_alaska_greenroom.image_index = 0;
			if (arg1 == "smug")
				obj_alaska_greenroom.image_index = 2;
			if (arg1 == "concern")
				obj_destiny_fb.image_index = 1;
			if (arg1 == "eyeroll")
				obj_destiny_fb.image_index = 2;
			if (arg1 == "smilefb")
				obj_destiny_fb.image_index = 3;
			if (arg1 == "salute")
				obj_destiny_fb.image_index = 4;
			break;
		case "destiny":
			if (arg1 == "right")
				obj_destiny_greenroom.sprite_index = spr_destiny_right;
			if (arg1 == "down")
				obj_destiny_greenroom.sprite_index = spr_destiny_down;
			if (arg1 == "smile")
				obj_destiny_greenroom.image_index = 1;
			if (arg1 == "normal")
				obj_destiny_greenroom.image_index = 0;
			if (arg1 == "fb0")
				obj_destiny_fb.image_index = 0;
			if (arg1 == "fb1")
				obj_destiny_fb.image_index = 1;
			if (arg1 == "fb2")
				obj_destiny_fb.image_index = 2;
			if (arg1 == "fb3")
				obj_destiny_fb.image_index = 3;
			if (arg1 == "fb4")
				obj_destiny_fb.image_index = 4;
			break;
		case "kaitlyn":
			if (arg1 == "up")
				obj_kaitlyn_greenroom.image_index = 1;
			if (arg1 == "normal")
				obj_kaitlyn_greenroom.image_index = 0;
			if (arg1 == "fb0")
				obj_kaitlyn_fb.image_index = 0;
			if (arg1 == "fb1")
				obj_kaitlyn_fb.image_index = 1;
			break;
		case "edengray":
			if (arg1 == "0")
				obj_eden_gray_sit.image_index = 0;
			if (arg1 == "1")
				obj_eden_gray_sit.image_index = 1;
			if (arg1 == "2")
				obj_eden_gray_sit.image_index = 2;
			if (arg1 == "3")
				obj_eden_gray_sit.image_index = 3;
			if (arg1 == "4")
				obj_eden_gray_sit.image_index = 4;
			if (arg1 == "5")
				obj_eden_gray_sit.image_index = 5;
			if (arg1 == "6")
				obj_eden_gray_sit.image_index = 6;
			if (arg1 == "7")
				obj_eden_gray_sit.image_index = 7;
			break;
	}
}
