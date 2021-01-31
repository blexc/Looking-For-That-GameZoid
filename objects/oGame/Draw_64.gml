

// room name gui
if (room == rTitleScreen) exit;
var _room_name = room_get_name(room);
_room_name = string_delete(_room_name, 1, 1);
set_draw(c_white, 1, fnFont, fa_bottom, fa_right);
draw_text(GUIW, GUIH, _room_name);

// shade
if (instance_exists(oPlayer))
{
	var _alpha;
	
	if (oPlayer.state == player_state_in_trouble) _alpha = 0;
	else _alpha = 0.15;

	set_draw(c_black, _alpha);
	draw_rectangle_color(0, 0, GUIW, GUIH, c_white, c_black, c_black, c_black, false);
	draw_rectangle_color(0, 0, GUIW, GUIH, c_black, c_black, c_black, c_black, false);
	draw_rectangle_color(0, 0, GUIW, GUIH, c_black, c_black, c_black, c_black, false);
}
reset_alpha();