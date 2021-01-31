#macro RES 160 // 160x160
#macro UNIT 16
#macro FRAMERATE 60
#macro GUIW display_get_gui_width()
#macro GUIH display_get_gui_height()
#macro M_GUI_X device_mouse_x_to_gui(0)
#macro M_GUI_Y device_mouse_y_to_gui(0)
#macro M_LEFT_PRESSED mouse_check_button_pressed(mb_left)

#macro K_UP keyboard_check(ord("W"))
#macro K_LEFT keyboard_check(ord("A"))
#macro K_DOWN keyboard_check(ord("S"))
#macro K_RIGHT keyboard_check(ord("D"))

#macro K_UP_PRESSED keyboard_check_pressed(ord("W"))
#macro K_LEFT_PRESSED keyboard_check_pressed(ord("A"))
#macro K_DOWN_PRESSED keyboard_check_pressed(ord("S"))
#macro K_RIGHT_PRESSED keyboard_check_pressed(ord("D"))

global.starting_room = rYourRoom;
global.window_scale = 4;

// for oTransition
enum TRANS_MODE
{
	OFF,
	GOTO,
	INTRO
}

// for oMenu/oButton
enum BUTTON
{
	IDLE,
	HOVERING,
	PRESSED
}