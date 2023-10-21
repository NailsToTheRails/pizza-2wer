//-----DEBUG-----//
draw_text(53,410,string_upper(global.rank))
draw_text(53,390,obj_player.y)
draw_text(53,350,obj_player.x)
//-----why------//

draw_set_font(global.ptfont);
	draw_sprite_ext(spr_tvdefault,image_index,860,85,1,1,0,c_white,1)
draw_text_scribble(855, 74, "[fa_center]" + string(global.collect))
draw_text_scribble_ext(xi, yi, "[wheel][fa_center][rainbow][wave]" + message, 900)
//-pt-//
//Timer
if (global.panic)
{
	var _fill = global.fill;
	var _currentbarpos = chunkmax - _fill;
	_perc = _currentbarpos / chunkmax;
	var _max_x = 299;
	var _barpos = _max_x * _perc;
	if (!surface_exists(bar_surface))
		bar_surface = surface_create(298, 30);
	var _barfillpos = floor(_barpos) + 13;
	if (_barfillpos > 0)
	{
		surface_resize(bar_surface, _barfillpos, 30);
		surface_set_target(bar_surface);
		draw_clear_alpha(0, 0);
		var clip_x = timer_x + 3;
		var clip_y = timer_y + 5;
		for (i = 0; i < 3; i++)
			draw_sprite(spr_timer_barfill, 0, barfill_x + (i * 173), 0);
		surface_reset_target();
		draw_surface(bar_surface, clip_x, clip_y);
	}
	draw_sprite(spr_timer_bar, -1, timer_x, timer_y);
	draw_sprite(johnface_sprite, johnface_index, timer_x + 13 + _barpos, timer_y + 20);
	var timerspr = pizzaface_sprite;
	if (timer_tower)
		timerspr = spr_timer_tower;
	draw_sprite(timerspr, pizzaface_index, timer_x + 320, timer_y + 10);
	var minutes = 0;
	for (var seconds = ceil(global.fill / 12); seconds > 59; seconds -= 60)
		minutes++;
	if (seconds < 10)
		seconds = concat("0", seconds);
	else
		seconds = string(seconds);
	draw_set_halign(1);
	draw_set_valign(1);
	draw_set_font(global.ptfont);
	draw_text(timer_x + 153, timer_y + 18, concat(minutes, ":", seconds));
}
	//collecttv//
		var hud_xx = 121 + irandom_range(-collect_shake, collect_shake);
	var hud_yy = 90 + irandom_range(-collect_shake, collect_shake) + hud_posY;

var _score = global.collect;
	var rx = hud_xx + 142;
	var ry = hud_yy - 22;
	var rank_ix = 0;

if (_score >= global.srank) {
    if (global.laps <= 2) {
        rank_ix = 4;
    } else {
        rank_ix = 5;
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