global.collect = 0
showtext = 0
xi = 500
yi = 600
collect_shake = 0;
previousrank = 0;
rank_scale = 1;
collect_shake = 0;
ded = false
hud_posY = 0;
global.rank = "d";
global.laps = 0;
   global.timesup = false
message = "TEST"
global.ptfont = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", true, 0);
chunkmax = 0;
timer_xplus = -153;
timer_yplus = 0;
timer_xstart = 960 / 2.9
timer_ystart = -165
timer_x = timer_xstart;
timer_y = timer_ystart;
timer_tower = false;
pizzaface_sprite = spr_timer_pizzaface1;
pizzaface_index = 0;
johnface_sprite = spr_timer_johnface;
johnface_index = 0;
hand_sprite = spr_timer_hand1;
hand_index = 0;
bar_surface = -4;
barfill_x = 0;
showtime_buffer = 0;
if (room = heyyouroom || room = timesuproom || room = rankroom) {
visible = false	
} else {
visible = true	
}
