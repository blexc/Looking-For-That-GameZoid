// find the largest scale possible that will fit on the monitor dimensions
surface_resize(application_surface, RES, RES);
display_set_gui_size(RES, RES);
window_set_size(RES * global.window_scale, RES * global.window_scale);
alarm[0] = 1;