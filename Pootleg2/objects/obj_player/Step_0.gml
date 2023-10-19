scr_collision();
scr_playerspr();
		xscale = image_xscale
		with (instance_place(x, y + 1, obj_destructibleplatform))
{
	falling = true;
	if (falling == 1)
		image_speed = 0.35;
}
switch (state)
{
	case states.normal: scr_player_normal() break
	case states.jump: scr_player_jump() break
	case states.crouch: scr_player_crouch() break
	case states.hurt: scr_player_hurt() break
	case states.crouchjump: scr_player_crouchjump() break
	case states.bodyslam: scr_player_bodyslam() break
		case states.mach: scr_player_mach1() break
				case states.machjump: scr_player_machjump() break
	case states.machturn: scr_player_machturn() break
		case states.machslide: scr_player_machslide() break
	case states.bashend: scr_player_bashend() break
	case states.rank: scr_player_getrank() break
		case states.gameover: scr_player_gameover() break
	case states.timesup: scr_player_timesup() break
	case states.mach1: scr_player_mach() break
	case states.mach2: scr_player_mach2() break
		case states.walljump: scr_player_walljump() break
		case states.superjumpprep: scr_player_superjumpprep() break
		case states.superjump: scr_player_superjump() break
				case states.superjumpland: scr_player_superjumpland() break
				case states.shoulderbash: scr_player_grab() break
	//transfo
	case states.knightjump: scr_player_knightjump() break
	case states.knight: scr_player_knightnormal() break
	case states.knightslide: scr_player_knightslide() break
		case states.fireass: scr_player_fireass() break
}
if (keyboard_check_pressed(vk_f2)) {
character = get_string("enter character", "");
if (character == "N") {
paletteselect = 0 	
} else {
paletteselect = 1	
}
}
if (room = rankroom) {
visible = false	
state = states.rank
} else {
visible = true
}
if (state = states.mach || state = states.machjump || state = states.machslide || state = states.machturn) {
	instance_create(x, y, obj_mach3effect)
}
if (keyboard_check_pressed(ord("X")) && canmove = 1) {
state = states.shoulderbash

}
hurtframes = clamp(hurtframes,0,10)
if (hurtframes > 0) {
hurtframes -= 0.1
}
if (hp = 0) {
room_restart() //temp	

	
}
if (keyboard_check_pressed(vk_f5) && global.solidvisibility = false ) {
global.solidvisibility = true
} else if (keyboard_check_pressed(vk_f5) && global.solidvisibility = true ) {
global.solidvisibility = false
}
if (keyboard_check_pressed(vk_f3)) {
global.laps += 1	
}
scr_playersounds();
if ((global.collect) >= global.srank)
	{
		if (global.laps <= 2) {
		global.rank = "s";
		} else {
		global.rank = "p";	
		}
	}
	else if ((global.collect) > global.arank)
		global.rank = "a";
	else if ((global.collect) > global.brank)
		global.rank = "b";
	else if ((global.collect) > global.crank)
		global.rank = "c";
	else
		global.rank = "d";