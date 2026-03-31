switch (text_bubble_style)
{
	case TextBubbleStyle.NORMAL:
		bubble_sprite = spr_enemy_bubble;
		break;
}
draw_sprite(bubble_sprite, 0, x, y);
s.draw(x + 20, y + 8, t);
