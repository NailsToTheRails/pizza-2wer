//Draw Text
draw_set_font(global.ptfont)
draw_set_halign(fa_center);
draw_set_color(c_white)




draw_self()




if drawing = true
{

rank = ini_read_string("Ranks", string(levelname), "d");
switch (rank)
			{
				case "p":
					rank_index = 5;
					break;
				case "s":
					rank_index = 4;
					break;
				case "a":
					rank_index = 3;
					break;
				case "b":
					rank_index = 2;
					break;
				case "c":
					rank_index = 1;
					break;
				default:
					rank_index = 0;
					break;
			}
draw_text(x,y-150, ini_read_real("Highscore", string(levelname), 0))
draw_sprite_ext(spr_ranks_hud, rank_index, x+100, y - 130, rank_scale, rank_scale, 0, c_white, 1);
draw_text(x,y-200,ini_read_string("Secret", string(levelname), 0) + " OF 6 SECRET")

	if ini_read_real("Toppin", string(levelname) + "1", 0) = 1
	draw_sprite(spr_pizzakinshroom, -1, x - 75, y - 100)
	else
	draw_sprite(spr_pizzakinshroom_pause, -1, x- 75, y - 100)


		if ini_read_real("Toppin", string(levelname) + "2", 0) = 1
	draw_sprite(spr_pizzakincheese,-1, x - 35, y - 100)
	else
	draw_sprite(spr_pizzakincheese_pause,-1,x- 35, y - 100)


	if ini_read_real("Toppin", string(levelname) + "3", 0) = 1
	draw_sprite(spr_pizzakintomato,-1,x, y - 100)
	else
	draw_sprite(spr_pizzakintomato_pause,-1,x, y - 100)

	if ini_read_real("Toppin", string(levelname) + "4", 0) = 1
	draw_sprite(spr_pizzakinsausage,-1,x + 35, y - 100)
	else
	draw_sprite(spr_pizzakinsausage_pause,-1,x + 35, y - 100)
	
	if ini_read_real("Toppin", string(levelname) + "5", 0) = 1
	draw_sprite(spr_pizzakinpineapple,-1,x + 75, y - 100)
	else
	draw_sprite(spr_pizzakinpineapple_pause,-1,x + 75, y - 100)




}

