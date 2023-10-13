if (global.panic == true && global.fill > 0)
	global.fill -= 0.2;

if (global.fill <= 0)
	global.fill = 0;

global.collect = clamp(global.collect, 0, 99999)
if global.fill <= 0 && ded = false
{
	alarm[1] = -1
alarm[2] = 3
ded = true
}
if ((global.panic == 1 && ded = true))
{
   global.collect -= 5
}
if (showtext == 1)
{
    xi = (500 + random_range(1, -1))
    if (yi > 500)
        yi -= 5
} 
if (showtext == 0)
{
    xi = (500 + random_range(1, -1))
	 if (yi < 600)
        yi += 5
}

		
		
		if (room = rankroom) {
		visible = false	
		} else {
		visible = true	
		}
		
		pizzaface_index += 0.35;
hand_index += 0.35;
johnface_index += 0.35;
if (global.panic && global.fill > 0)
{
	showtime_buffer = 100;
		timer_y = Approach(timer_y, timer_ystart + 212, 4);
}
else if (global.panic)
{
	if (pizzaface_sprite == spr_timer_pizzaface1)
	{
		pizzaface_sprite = spr_timer_pizzaface2;
		pizzaface_index = 0;
	}
	else if (pizzaface_sprite == spr_timer_pizzaface2)
	{
		if (floor(pizzaface_index) == (sprite_get_number(pizzaface_sprite) - 1))
		{
			pizzaface_sprite = spr_timer_pizzaface3;
			pizzaface_index = 0;
		}
	}
	else if (showtime_buffer > 0)
		showtime_buffer--;
	else
		timer_y = Approach(timer_y, timer_ystart + 212, 1);
}
else
{
	pizzaface_sprite = spr_timer_pizzaface1;
	hand_sprite = spr_timer_hand1;
	timer_y = timer_ystart + 212;
}
if (global.panic && global.fill < (chunkmax / 5))
	hand_sprite = spr_timer_hand2;
barfill_x -= 0.2;
if (barfill_x < -173)
	barfill_x = 0;
if (pizzaface_index > (sprite_get_number(pizzaface_sprite) - 1))
	pizzaface_index = frac(pizzaface_index);
if (hand_index > (sprite_get_number(hand_sprite) - 1))
	hand_index = frac(hand_index);
if (johnface_index > (sprite_get_number(johnface_sprite) - 1))
	johnface_index = frac(johnface_index);
	if (instance_number(obj_hud) >= 2) {
	instance_destroy(self);	
	}