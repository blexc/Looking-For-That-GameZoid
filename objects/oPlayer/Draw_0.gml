/// @description draw_self

if (state != player_state_in_trouble)
{
	set_draw(c_white, 0.3);
	draw_circle(xcenter, ycenter, interact_radius, false);
	reset_alpha();

	set_draw((can_interact ? c_lime : c_red), 1);
	draw_line(sprite_width / 2 + x, sprite_height / 2 + y, mouse_x, mouse_y);
	draw_circle(mouse_x, mouse_y, 1, false);
	reset_alpha();
}

draw_self();