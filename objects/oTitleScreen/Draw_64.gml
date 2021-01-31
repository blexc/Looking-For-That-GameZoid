/// @description display msg

var _yoffset = UNIT;
set_draw(c_white, 1, fnFont, fa_top, fa_center);
draw_text(GUIW / 2, _yoffset, msg_title_small);

set_draw(c_lime, 1, fnFontBig, fa_top, fa_center);
draw_text(GUIW / 2, _yoffset + font_get_size(fnFont), msg_title_big);

set_draw(c_white, 1, fnFont, fa_center, fa_center);
draw_text(GUIW / 2, GUIH / 2, msg_press);