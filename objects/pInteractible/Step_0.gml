/// @description Insert description here

var _alpha_target = (mouse_hovering_over_me) ? 0.5 : 1;
print(_alpha_target);
image_alpha = approach(image_alpha, _alpha_target, 0.1);