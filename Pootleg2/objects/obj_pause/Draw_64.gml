if (pause == 1) {
    draw_sprite(spr_pausescreen, image_index, 0, 0)
	var middlex = 960 / 2;
	var middley = 540 / 2;
	
	var sepy = 32;
	var yy = middley - ((array_length(array) * sepy) / 2);
	
	// border vars
	var rborder = 16;
	var rx = middlex;
	var ry = yy;
	var rw = middlex;
	var rh = yy + (array_length(array) * sepy);
		for(var i = 0; i < array_length(array); i++)
	{
		var c = sel == i ? c_white : c_gray;
		var txt = array[i][0];
		
		draw_set_colour(c);
		draw_text_auto(480, yy + (sepy * i), txt);
	}
}
if (pause = 0) {
draw_set_color(c_white);	
}
draw_text_auto(20,50,sel)