/// @description draw_cursor

set_draw((can_interact ? c_green : c_red), 0.7);
draw_circle(M_GUI_X, M_GUI_Y, 2, false);

reset_alpha();