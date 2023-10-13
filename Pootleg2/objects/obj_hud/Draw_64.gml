//-----DEBUG-----//
draw_text(53,410,string_upper(global.rank))
draw_text(53,390,obj_player.y)
draw_text(53,350,obj_player.x)
//-----why------//
draw_set_font(global.ptfont);
draw_text_scribble_ext(xi, yi, "[wheel][fa_center][rainbow][wave]" + message, 900)
//-pt-//
//Timer
// ill work on this later!

	//collecttv//
		var hud_xx = 121 + irandom_range(-collect_shake, collect_shake);
	var hud_yy = 90 + irandom_range(-collect_shake, collect_shake) + hud_posY;
	draw_sprite_ext(spr_tvdefault,image_index,860,85,1,1,0,c_white,1)
draw_text_scribble_ext(855, 74, "[fa_center]" + string(global.collect), 900)
var _score = global.collect;
	var rx = hud_xx + 142;
	var ry = hud_yy - 22;
	var rank_ix = 0;

if (_score >= global.srank) {
    if (global.laps >= 2) {
        rank_ix = 5;
    } else {
        rank_ix = 4;
    }
} else if (_score >= global.arank) {
    rank_ix = 3;
} else if (_score >= global.brank) {
    rank_ix = 2;
} else if (_score >= global.crank) {
    rank_ix = 1;
}
	if (previousrank != rank_ix)
	{
		previousrank = rank_ix;
	
		rank_scale = 3;
	}
	rank_scale = Approach(rank_scale, 1, 0.2);
	draw_sprite_ext(spr_ranks_hud, rank_ix, rx, ry, rank_scale, rank_scale, 0, c_white, 1);
	var spr_w = sprite_get_width(spr_ranks_hudfill);
	var spr_h = sprite_get_height(spr_ranks_hudfill);
	var spr_xo = sprite_get_xoffset(spr_ranks_hudfill);
	var spr_yo = sprite_get_yoffset(spr_ranks_hudfill);
	var perc = 0;
	switch (rank_ix)
	{
		case 4:
			perc = 1;
			break;
		case 3:
			perc = (_score - global.arank) / (global.srank - global.arank);
			break;
		case 2:
			perc = (_score - global.brank) / (global.arank - global.brank);
			break;
		case 1:
			perc = (_score - global.crank) / (global.brank - global.crank);
			break;
		default:
			perc = _score / global.crank;
	}
	var t = spr_h * perc;
	var top = spr_h - t;
	draw_sprite_part(spr_ranks_hudfill, rank_ix, 0, top, spr_w, spr_h - top, rx - spr_xo, (ry - spr_yo) + top);