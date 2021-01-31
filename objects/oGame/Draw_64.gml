if (room == rTitleScreen) exit;

var _room_name = room_get_name(room);
_room_name = string_delete(_room_name, 1, 1);

set_draw(c_white, 1, fnFont, fa_bottom, fa_right);
draw_text(GUIW, GUIH, _room_name);