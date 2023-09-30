if (place_meeting(x + 1, y, obj_player) || place_meeting(x - 1, y, obj_player) || place_meeting(x, y + 1, obj_player) || place_meeting(x, y - 1, obj_player))
	{
		with(obj_player) {
	if (hurtframes = 0) {
global.collect -= 10
state = states.hurt
hurtframes = 10
	vsp = -11
	hsp = image_xscale * -11
	}
}
	}