step_since_spawned += 1;
if (fade_in == true)
{
	book_alpha += 0.05;
	book_y -= (8 / step_since_spawned);
}
if (book_alpha >= 1)
	fade_in = false;
if (has_drawn == true)
{
	draw_height += 2;
	if (draw_height >= 140)
		drawing_complete = true;
}
if (has_drawn == false)
{
	draw_height = 30;
	drawing_complete = false;
}
if (fade_out == true)
{
	book_alpha -= 0.05;
	if (book_alpha <= 0)
		instance_destroy();
}
