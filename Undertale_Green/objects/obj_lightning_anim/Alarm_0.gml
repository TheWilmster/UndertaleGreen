obj_heart.shake = 10;
image_index = 1;
fadeout = true;
instance_create_depth(x, y, obj_heart.depth - 1, obj_lightning_strike);
audio_play_sound(snd_heavydamage, 1, false);
