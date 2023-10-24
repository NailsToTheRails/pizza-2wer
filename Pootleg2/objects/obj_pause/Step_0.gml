sel = clamp(sel,0,2)
if (pause = 1) {
if (keyboard_check_pressed(vk_up)) {
sel -= 1
}
if (keyboard_check_pressed(vk_down)) {
	sel += 1
}
}
if (pause = 1) {
instance_deactivate_all(true);	
} else {
instance_activate_all();	
}
