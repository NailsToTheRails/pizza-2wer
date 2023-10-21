function scr_sound() {
	var snd = argument[irandom((argument_count - 1))]
	global.music = audio_play_sound(snd, 10, true)
	audio_sound_gain(global.music, 0.6, 1)
}
function scr_playersounds() {
	with obj_player
	{
	if state = states.mach1 && !audio_is_playing(sfx_mach1) && grounded
	{
	mach1snd = audio_play_sound(sfx_mach1,1,false)
	}
	else if state != states.mach1 or !grounded
	audio_stop_sound(mach1snd)

	if  (sprite_index = spr_mach2 or state = states.walljump) && !audio_is_playing(sfx_mach2)
	{
	mach2snd = audio_play_sound(sfx_mach2,1,false)

	}
	else 
	if  (sprite_index != spr_mach2 && state != states.walljump) 
	audio_stop_sound(mach2snd)




	if (state = states.mach) && !audio_is_playing(sfx_mach3)
	{
	mach3snd = audio_play_sound(sfx_mach3,1,false)
	}
	else if (state != states.mach)
	audio_stop_sound(mach3snd)
}
}
function Approach(a, b, amount)
{
	if (a < b)
	{
		a += amount;
		if (a > b)
			return b;
	}
	else
	{
		a -= amount;
		if (a < b)
			return b;
	}
	return a;
}
function concat()
{
	var _string = "";
	for (var i = 0; i < argument_count; i++)
		_string += string(argument[i]);
	return _string;
}
function draw_text_auto(x, y, str, sep = undefined, w = undefined, alpha = draw_get_alpha())
{
	str = string(str);
	
	if draw_get_font() == global.ptfont
		str = string_upper(str);
	
	var aprev = draw_get_alpha();
	draw_set_alpha(alpha);
	
	if is_undefined(sep) && is_undefined(w)
		draw_text(x, y, str);
	else
		draw_text_ext(x, y, str, sep, w);
	
	draw_set_alpha(aprev);
}
/// @description Returns the id of a tile at a given depth and position.
/// @param depth The depth of the tile to be found.
/// @param x The x position to check.
/// @param y The y position to check.
/// @returns 
function tile_layer_find(argument0, argument1, argument2) {

	var __depth = argument0;
	var __x = argument1;
	var __y = argument2;

	// Scan through all layers looking for tiles
	// This is going to be slow
	var __layers = layer_get_all();
	var __numlayers = array_length_1d(__layers);

	var __i;
	for(__i = 0; __i < __numlayers; __i++)
	{
		if (layer_get_depth(__layers[__i]) != __depth)
			continue;
	
		var __els = layer_get_all_elements(__layers[__i]);
		var __numels = array_length_1d(__els);
	
		var __j;
		for(__j = 0; __j < __numels; __j++)
		{
			var __eltype = layer_get_element_type(__els[__j]);
			if (__eltype == layerelementtype_tile)
			{
				var __tileXscale = layer_tile_get_xscale(__els[__j]);
				var __tileYscale = layer_tile_get_yscale(__els[__j]);
			
				// Fast(ish) path with more early-outs
				if ((__tileXscale >= 0) && (__tileYscale >= 0))
				{			
					var __tileX = layer_tile_get_x(__els[__j]);						
					if (__x < __tileX)
						continue;
					
					var __tileY = layer_tile_get_y(__els[__j]);
					if (__y < __tileY)
						continue;
							
					var __tileReg = layer_tile_get_region(__els[__j]);			
					var __tileRight = __tileX + (__tileXscale * __tileReg[2]);
					if (__x >= __tileRight)
						continue;
					
				
					var __tileBottom = __tileY + (__tileYscale * __tileReg[3]);
					if (__y >= __tileBottom)
						continue;
				
					// Passed all the tests so return this tile
					return __els[__j];
				}
				else
				{
					var __tileReg = layer_tile_get_region(__els[__j]);
					var __minx = layer_tile_get_x(__els[__j]);
					var __maxx = __minx + (__tileXscale * __tileReg[2]);
					if (__minx > __maxx)
					{
						var __temp = __minx;
						__minx = __maxx;
						__maxx = __temp;
					}
				
					if (__x < __minx)
						continue;
					
					if (__x >= __maxx)
						continue;
					
					var __miny = layer_tile_get_y(__els[__j]);
					var __maxy = __miny + (__tileYscale * __tileReg[3]);
					if (__miny > __maxy)
					{
						var __temp = __miny;
						__miny = __maxy;
						__maxy = __temp;
					}
				
					if (__y < __miny)
						continue;
					
					if (__y >= __maxy)
						continue;
					
					// Passed all the tests so return this tile
					return __els[__j];
				
				}
			}
		}	
	}

	return -1;


}
/// @description Hides all tiles at the indicated depth layer.
/// @param depth The depth of tiles which is to be hidden.
/// @returns 
function tile_layer_hide(argument0) {

	var __depth = argument0;

	// Scan through all layers looking for tiles
	var __layers = layer_get_all();
	var __numlayers = array_length_1d(__layers);

	var __i;
	for(__i = 0; __i < __numlayers; __i++)
	{
		if (layer_get_depth(__layers[__i]) != __depth)
			continue;
	
		var __els = layer_get_all_elements(__layers[__i]);
		var __numels = array_length_1d(__els);
	
		var __j;
		for(__j = 0; __j < __numels; __j++)
		{
			var __eltype = layer_get_element_type(__els[__j]);
			if (__eltype == layerelementtype_tile)
			{
				layer_tile_visible(__els[__j],false);			
			}
		}	
	}


}
/// @description Shows all tiles at the indicated depth layer.
/// @param depth The depth of tiles which is to be shown.
/// @returns 
function tile_layer_show(argument0) {

	var __depth = argument0;

	// Scan through all layers looking for tiles
	var __layers = layer_get_all();
	var __numlayers = array_length_1d(__layers);

	var __i;
	for(__i = 0; __i < __numlayers; __i++)
	{
		if (layer_get_depth(__layers[__i]) != __depth)
			continue;
	
		var __els = layer_get_all_elements(__layers[__i]);
		var __numels = array_length_1d(__els);
	
		var __j;
		for(__j = 0; __j < __numels; __j++)
		{
			var __eltype = layer_get_element_type(__els[__j]);
			if (__eltype == layerelementtype_tile)
			{
				layer_tile_visible(__els[__j],true);			
			}
		}	
	}


}

/// @description Deletes the tile(s) at a given depth and position.
/// @param depth The depth of a tile to be deleted.
/// @param x The x position at which to delete a tile.
/// @param y The y position at which to delete a tile.
/// @returns 
function tile_layer_delete_at(argument0, argument1, argument2) {

	var __depth = argument0;
	var __x = argument1;
	var __y = argument2;

	var __tile_el = tile_layer_find(__depth, __x, __y);
	if (__tile_el != -1)
	{
		layer_tile_destroy(__tile_el);			
	}


}


function scr_rainbow (divider) {
randomize ()

return make_color_hsv ((current_time / divider) mod 255,255,255);

}

function draw_set_blend_mode(argument0) { // Feather disable all
	gpu_set_blendmode(argument0)



}
function scr_playerreset() {


	audio_stop_all()


	if instance_exists(obj_timesup)
	instance_destroy(obj_timesup)
		if instance_exists(obj_pizzaface)
	instance_destroy(obj_pizzaface)
	global.fill = 500
	obj_player.state = states.normal



global.laps = 0
	ds_list_clear(global.saveroom)
	//ds_list_clear(global.baddieroom)
	with (obj_player) 
	{
		room_goto(test)
x = 288
y = 384
	obj_player.visible = true
		image_blend = make_colour_hsv(0,0,255);
	grav = GRAVITY_DEFAULT;
	hsp = 0;
	vsp = 0;
	obj_hud.ded = false
	visible = true
	global.panic = false
	jumpAnim = true
if (instance_exists(obj_pizzakinshroom) && global.shroomfollow == 1)
    instance_destroy(obj_pizzakinshroom)
if (instance_exists(obj_pizzakincheese) && global.cheesefollow == 1)
    instance_destroy(obj_pizzakincheese)
if (instance_exists(obj_pizzakintomato) && global.tomatofollow == 1)
    instance_destroy(obj_pizzakintomato)
if (instance_exists(obj_pizzakinsausage) && global.sausagefollow == 1)
    instance_destroy(obj_pizzakinsausage)
if (instance_exists(obj_pizzakinpineapple) && global.pineapplefollow == 1)
    instance_destroy(obj_pizzakinpineapple)
	global.collect = 0

	global.toppintotal = 1

	}




}

/// @function								scr_sound(sound...)
/// @param {Asset.GMSound}  sound					The soundeffect to play
/// @description							Plays soundeffect.
function scr_sssound() {
	var snd = audio_play_sound(argument[irandom((argument_count - 1))], 1, false);
	audio_sound_gain(snd, global.soundVolume, 0);	
	return snd;
}
function scr_soundeffect() {
	var snd = argument[irandom((argument_count - 1))]
	audio_play_sound(snd, 1, false)
}

/// @description animation_end(value, endpoint)
/// @function animation_end
/// @param value The Value to check
/// @param endpoint The Value considered the end
function animation_end(value = floor(image_index), endpoint = (image_number - 1))
{

	return value >= endpoint;
}

function trace()
{
	var _string = "";
	for (var i = 0; i < argument_count; i++)
		_string += string(argument[i]);
	show_debug_message(_string);
}
function instance_create(argument0, argument1, argument2) {
	return instance_create_depth(argument0, argument1, 1, argument2);
}