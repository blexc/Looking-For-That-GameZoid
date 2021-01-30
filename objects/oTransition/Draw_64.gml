/// @description draw black fade

if (mode == TRANS_MODE.OFF) exit;

var _w = display_get_gui_width();
var _h = display_get_gui_height();
set_draw(c_black, percent);
draw_rectangle(0, 0, _w, _h, false);
reset_alpha();