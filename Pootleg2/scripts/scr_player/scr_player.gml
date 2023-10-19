 //@idle
function scr_player_normal()
{
	canmove = 1
		mask_index = spr_player_mask
	 if (keyboard_check(vk_shift))
	{
		state = states.mach1
	}
	jumpAnim = 1
	if (!grounded) {
	state = states.jump	
	}
		if (grounded && keyboard_check(vk_down))
	{
		state = states.crouch
	}
	var move = (keyboard_check(vk_right) - keyboard_check(vk_left))
	hsp = approach(hsp, move * 6, 0.62)
	if (move != 0)
	{
				image_speed = move / 2.5
		image_xscale = move
		sprite_index = spr_walk

	}
	else {
		if (!global.panic) {
		sprite_index = spr_idle
		} else {
		sprite_index = spr_panicidle	
		}
	image_speed = 0.4;
	}
		if (grounded && keyboard_check(ord("Z"))) {
		vsp = -13
		grounded = false
		state = states.jump
			  scr_sssound(sound_jump)
			   instance_create(x, y, obj_jumpdust);
		}
}
//@jump
function scr_player_jump()
{
	canmove = 1
		mask_index = spr_player_mask
					image_speed = 0.4;
	 if (jumpAnim == 1) {
	        if (floor(image_index) == (image_number - 1)) 
				jumpAnim = 0;
	    }
		if (keyboard_check_pressed(vk_down)) {
		state = states.bodyslam
		vsp = -2
		}
	if (grounded) {
		jumpAnim = 1;
	state = states.normal	
	  instance_create(x, y, obj_landcloud);
	}
		var move = (keyboard_check(vk_right) - keyboard_check(vk_left))
	hsp = approach(hsp, move * 6, 0.62)
	if (move != 0)
	{
		image_xscale = move
			image_speed = 0.4;
			if (jumpAnim == 1) {
		sprite_index = spr_jump
						image_speed = 0.4;
			} else {
						sprite_index = spr_fall
										image_speed = 0.4;
			}
	}
	else {
			image_speed = 0.4;
			if (jumpAnim == 1) {
		sprite_index = spr_jump
						image_speed = 0.4;
			} else {
						sprite_index = spr_fall
										image_speed = 0.4;
			}

		}
}
//@hurt
function scr_player_hurt()
{
	canmove = 0
	jumpAnim = 1
	var move = (keyboard_check(vk_right) - keyboard_check(vk_left))
	hsp = approach(hsp, move * 6, 0.32)
	sprite_index = spr_hurt
	if (grounded) {
	state = states.normal	
	}
}
//@crouch
function scr_player_crouch()
{
canmove = 0
	jumpAnim = 1
				image_speed = 0.4;
		var move = (keyboard_check(vk_right) - keyboard_check(vk_left))
	hsp = approach(hsp, move * 4, 0.42)
	if (move != 0)
	{

		image_xscale = move
		sprite_index = spr_crouchmove

	}
	else
		sprite_index = spr_crouchidle
	mask_index = spr_crouchmask
if (!keyboard_check(vk_down) && grounded && !place_meeting(x,y-20,obj_solid))
	{
		state = states.normal
		mask_index = spr_player_mask
	}
	if (keyboard_check_pressed(ord("Z")) && grounded)
	{
		vsp = -10
		state = states.crouchjump
		sprite_index = spr_crouchjump
	}
}
function scr_player_crouchjump()
{
	canmove = 0
		    if (jumpAnim == 1) {
	        if (floor(image_index) == (image_number - 1)) 
				jumpAnim = 0;
	    }
		mask_index = spr_crouchmask
		var move = (keyboard_check(vk_right) - keyboard_check(vk_left))
	hsp = approach(hsp, move * 4, 0.46)
	if (move != 0)
	{
		image_xscale = move
	if (jumpAnim == 1) {
		sprite_index = spr_crouchjump
						image_speed = 0.4;
			} else {
						sprite_index = spr_crouchfall
										image_speed = 0.4;
			}
	}
	else {
			if (jumpAnim == 1) {
		sprite_index = spr_crouchjump
						image_speed = 0.4;
			} else {
						sprite_index = spr_crouchfall
										image_speed = 0.4;
			}
	}
	if (grounded && keyboard_check(vk_down)) {
			state = states.crouch
	if (jumpAnim == 1) {
		sprite_index = spr_crouchjump
						image_speed = 0.4;
			} else {
						sprite_index = spr_crouchfall
										image_speed = 0.4;
			}
	} 
		if (grounded && !keyboard_check(vk_down) && place_meeting(x,y-20,obj_solid)) {
			state = states.crouch
			sprite_index = spr_crouchidle
	} 
		
		if (grounded && !keyboard_check(vk_down) && !place_meeting(x,y-20,obj_solid)) {
			state = states.normal
				mask_index = spr_player_mask
	}
}
//@bodysuck
function scr_player_bodyslam() {
	canmove = 0
	vsp = approach(vsp,12,5)
	image_speed = 0.4;
var move = (keyboard_check(vk_right) - keyboard_check(vk_left))
	hsp = approach(hsp, move * 4, 0.46)
	if (		groundslam = 1 ) {
sprite_index = spr_groundslam
	} else {
sprite_index = spr_groundpound
	}
if (grounded) {
			groundslam = 0
	if (place_meeting(x,y+2,obj_slope))
		{
			var slopexscale = instance_place(x,y+1,obj_slope)
	image_xscale = clamp(-slopexscale.image_xscale,-1,1)
			hsp = (image_xscale * hsp_momentum)
			state = states.mach
			hsp_momentum = approach(hsp,4, 0.05)
			sprite_index = spr_mach
			groundtimer = 25
		} else if (place_meeting(x,y+2,obj_slopePlatform))
		{
			var slopexscale = instance_place(x,y+1,obj_slopePlatform)
	image_xscale = clamp(-slopexscale.image_xscale,-1,1)
			hsp = (image_xscale * hsp_momentum)
			state = states.mach
			hsp_momentum = approach(hsp,4, 0.05)
			sprite_index = spr_mach
			groundtimer = 25
		} else if place_meeting(x , y+3, obj_metalblock)
			{
				with (instance_place(x, (y+3), obj_metalblock))
					instance_destroy(self)
			} else {
		state = states.normal	
			}
}
}
//@mach
function scr_player_superjumpprep() {
	canmove = 0
image_speed = 0.4
mask_index = spr_crouchmask
var move = (keyboard_check(vk_right) - keyboard_check(vk_left))
	hsp = approach(hsp, move * 3, 0.42)
	if (move != 0)
	{
				image_speed = move / 2.5
		image_xscale = move
		sprite_index = spr_superjumpmove
image_speed = 0.4
	}
	else {
		sprite_index = spr_superjumpprep
		image_speed = 0.4
	}
	if (keyboard_check_released(vk_up)) {
	state = states.superjump
	vsp = -4
	mask_index = spr_player_mask
	sprite_index = spr_superjump
	}
}
function scr_player_superjump() {
	canmove = 0
		mask_index = spr_player_mask
var move = (keyboard_check(vk_right) - keyboard_check(vk_left))
	hsp = approach(hsp, move * 0.1, 1)
		vsp = -20
			if (place_meeting(x,y - 2,obj_solid))
	{
		state = states.superjumpland
		sprite_index = spr_superjumpland
	}
	if (keyboard_check_pressed(vk_shift)) {
	state = states.machjump	
	hsp = 9 * image_xscale
	vsp = -5
	}
	image_speed = 0.4
}
function scr_player_superjumpland() {
	canmove = 0
		mask_index = spr_player_mask
			image_speed = 1
	vsp = 0
	sprite_index = spr_superjumpland
	hsp = 0
	 if (floor(image_index) == (image_number - 1))  {
				state = states.normal
	    }
}
function scr_player_mach1()
{
	canmove = 1
if (!grounded) {
state = states.machjump	
}
	mach = 3
	image_speed = 0.4;
	hsp = approach(hsp, image_xscale * 10, 3)
	if (keyboard_check(vk_up)) {
	state = states.superjumpprep	
	}
	if (place_meeting(x+image_xscale,y,obj_solid))
	{
				if place_meeting(x + hsp , (y), obj_destroyable)
			{
				with (instance_place(x + hsp, (y), obj_destroyable))
					instance_destroy(self)
			} else if place_meeting(x + hsp , (y), obj_metalblock)
			{
				with (instance_place(x + hsp, (y), obj_metalblock))
					instance_destroy(self)
			} else 		if (place_meeting(x+image_xscale,y,obj_solid) && place_meeting(x,y+3,obj_slope) && grounded)
	{
		state = states.walljump
		hsp = 0
	} else {
		state = states.bashend
		vsp = -6
		hsp = -image_xscale * 6
	}
	}
	if (keyboard_check_pressed(ord("Z")))
	{
		state = states.machjump	
		scr_sssound(sound_jump)
		vsp = -14
	}
	sprite_index = spr_mach
	if (hsp >= 7.5 || hsp <= -7.5)
	{
		if (image_xscale == -1 && keyboard_check(vk_right)) {
			state = states.machturn
				scr_sssound(sfx_machturn)
		}
	if (image_xscale == 1 && keyboard_check(vk_left)) {
			state = states.machturn
				scr_sssound(sfx_machturn)
		}
	}
	if (!keyboard_check(vk_shift))
		state = states.normal
		if (keyboard_check(vk_down) && grounded)
	{
		state = states.machslide	
	}

}
function scr_player_machjump()
{
	canmove = 1
	if (place_meeting(x+image_xscale,y,obj_solid))
	{
		state = states.walljump
		hsp = 0
	}
	image_speed = 0.4;
			if (mach = 3) {
					hsp = image_xscale * 9
		} else if (mach = 2){ 
	hsp = image_xscale * 6
		} else if (mach = 1){ 
			hsp = image_xscale * 4
		}

	if (grounded) {
		if (mach = 3) {
		state = states.mach
		} else if (mach = 2){ 
		state = states.mach2
		} else if (mach = 1) {
		state = states.mach1	
		}
	}
	if (!keyboard_check(vk_shift))
	{
		state = states.jump
	}
	if (keyboard_check(vk_down)) {
			sprite_index = spr_dive
	vsp = 12
	if (keyboard_check_pressed(ord("Z")))
	{
		state = states.bodyslam
		scr_sssound(sound_jump)
		vsp = -14
		groundslam = 1
	}
	} else {
		sprite_index = spr_machjump	
	}
}
function scr_player_machturn()
{
	canmove = 0
    if (grounded)
    {
		if (place_meeting(x+image_xscale,y,obj_solid))
	{
		state = states.bashend
		vsp = -6
		hsp = -image_xscale * 6
	}
        image_speed = 0.4;

        if (mach == 3)
        {
            sprite_index = spr_machturn;
        }
        else
        {
            sprite_index = spr_mach2turn;
        }

        hsp = approach(hsp, image_xscale * 3, 0.40);

        if ((hsp == 3 || hsp == -3) && grounded)
        {
            image_xscale *= -1;

            if (mach == 3)
            {
                state = states.mach;
                hsp = image_xscale * 9;
            }
            else if (mach == 2)
            {
                state = states.mach2;
                hsp = image_xscale * 5;
            }
            else if (mach == 1)
            {
                state = states.mach1;
                hsp = image_xscale * 3;
            }
        }
        else
        {
            if (!grounded)
            {
                sprite_index = spr_machturn;
                hsp = approach(hsp, 0, 0.25);
            }
        }
    }
    else
    {
        if (!grounded)
        {
            sprite_index = spr_machturn;
            hsp = approach(hsp, image_xscale * 0, 0.25);
        }
    }
}
function scr_player_bashend()
{
	canmove = 0
	image_speed = 0.4;
sprite_index = spr_machend
	if (grounded)
		state = states.normal
}
function scr_player_machslide()
{
canmove = 0
	sprite_index = spr_machroll
				if (mach = 3) {
					hsp = image_xscale * 9
		} else if (mach = 2){ 
	hsp = image_xscale * 6
		}

	mask_index = spr_crouchmask
if (!keyboard_check(vk_down) && grounded && !place_meeting(x,y-20,obj_solid))
	{
							if (mach = 3) {
						state = states.mach
		} else if (mach = 2){ 
	state = states.mach2
		}
	
		mask_index = spr_player_mask
	}
	if (!grounded)
	{
				mask_index = spr_crouchmask
		state = states.machjump

	}
	if (place_meeting(x+image_xscale,y,obj_solid))
	{
		state = states.bashend
		vsp = -6
		hsp = -image_xscale * 6
				mask_index = spr_player_mask
	}
}
function scr_player_walljump()
{
	canmove = 0
	if (keyboard_check(vk_shift)) {
    vsp = -9
    if (grounded) 
    {
		if (!place_meeting(x,y+3,obj_slope)) {
		if (mach = 3) {
        state = states.mach
		} else if (mach = 2) {
		state = states.mach2	
		} else if (mach = 1) {
		state = states.mach1	
		} 
		} else {
		state = states.walljump
		}
    }
	  if (place_meeting(x,y-2,obj_solid))
    {
 state = states.superjumpland
    }
    if (place_meeting(x+image_xscale,y,obj_solid))
    {
        sprite_index = spr_wallrun
    }
    else 
    {
        hsp = 0
    }
    if (!place_meeting(x+image_xscale,y-sign(vsp),obj_solid))
    {
        		if (mach = 3) {
        state = states.mach
		vsp = 0
		} else if (mach = 2) {
		state = states.mach2	
		vsp = 0
		} else if (mach = 1) {
		state = states.mach1	
		vsp = 0
		}
    }
    if (keyboard_check_pressed(ord("Z")) && !grounded)
    {
        hsp = image_xscale * 15
		image_xscale = -image_xscale
        vsp = -10.5
        state = states.machjump
    }
} else {
state = states.jump	
}
}
//mach 2
function scr_player_mach2()
{
	canmove = 1
	if (!grounded) {
state = states.machjump	
}
	mach = 2
	image_speed = 0.4;
		hsp = approach(hsp, (image_xscale * 9), 0.3)
	if (place_meeting(x+image_xscale,y,obj_solid))
	{
				if place_meeting(x + hsp , (y), obj_destroyable)
			{
				with (instance_place(x + hsp, (y), obj_destroyable))
					instance_destroy(self)
			} else 		if (place_meeting(x+image_xscale,y,obj_solid) && place_meeting(x,y+3,obj_slope) && grounded)
	{
		state = states.walljump
		hsp = 0
	} else {
		state = states.bashend
		vsp = -6
		hsp = -image_xscale * 6
	}
	}
	if (hsp = image_xscale * 9) {
	state = states.mach
	mach = 3
	}
	if (keyboard_check_pressed(ord("Z")))
	{
		state = states.machjump	
		vsp = -14
		scr_sssound(sound_jump)
	}
	hsp = approach(hsp, image_xscale * hsp_momentum, 0.05)
	sprite_index = spr_mach2
	if (hsp >= 7.5 || hsp <= -7.5)
	{
			if (image_xscale == -1 && keyboard_check(vk_right)) {
			state = states.machturn
				scr_sssound(sfx_machturn)
		}
			if (image_xscale == 1 && keyboard_check(vk_left)) {
			state = states.machturn
				scr_sssound(sfx_machturn)
		}
	}
	if (!keyboard_check(vk_shift))
		state = states.normal
		if (keyboard_check_pressed(vk_down) && grounded)
	{
		state = states.machslide	
	}

}
//mach 1
function scr_player_mach()
{
		canmove = 1
if (!grounded) {
state = states.machjump	
}
if (mach = 2 or mach = 3) {
hsp = 0
mach = 1
}
	mach = 1
	image_speed = 0.4;
	
	hsp = approach(hsp, (image_xscale * 4), 0.2)
	if (place_meeting(x+image_xscale,y,obj_solid))
	{
		if (place_meeting(x+image_xscale,y,obj_solid) && place_meeting(x,y+3,obj_slope) && grounded)
	{
		state = states.walljump
		hsp = 0
	} else {
		state = states.bashend
		vsp = -6
		hsp = -image_xscale * 6
	}
	} 	
	if (hsp = image_xscale * 4) {
	state = states.mach2
	mach = 3
	}
	if (keyboard_check_pressed(ord("Z")))
	{
		state = states.machjump	
		vsp = -14
		scr_sssound(sound_jump)
	}
	hsp = approach(hsp, image_xscale * hsp_momentum, 0.05)
	sprite_index = spr_mach1
	if (hsp >= 7.5 || hsp <= -7.5)
	{
		if (image_xscale == -1 && keyboard_check(vk_right))
			state = states.machturn
		if (image_xscale == 1 && keyboard_check(vk_left)) 
			state = states.machturn
	}
	if (!keyboard_check(vk_shift))
		state = states.normal
}
//@powers
function scr_player_knightslide() {
		canmove = 0
	hsp = image_xscale * 12
	if (place_meeting(obj_player.x+image_xscale,obj_player.y,obj_solid))
	{
		if place_meeting(x + hsp , (y), obj_metalblock)
			{
				with (instance_place(x + hsp, (y), obj_metalblock))
					instance_destroy(self)
			} else {
		state = states.knightjump
		vsp = -11
			}
	} 
		if (place_meeting(obj_player.x+image_xscale,obj_player.y,obj_solid))
	{
		if place_meeting(x + hsp , (y), obj_ratblock)
			{
				with (instance_place(x + hsp, (y), obj_ratblock))
					instance_destroy(self)
			} else {
		state = states.knightjump
		vsp = -11
			}
	} 
	}
function scr_player_knightnormal() {
		canmove = 0
	var move = (keyboard_check(vk_right) - keyboard_check(vk_left))
	hsp = approach(hsp, move * 6, 0.42)
	if (move != 0)
	{
				image_speed = move / 2.5
		image_xscale = move
		sprite_index = spr_knightwalk

	}
	else {
		sprite_index = spr_knightidle
	image_speed = 0.4;
	}
	if (grounded) {
	if place_meeting(x , y+3, obj_metalblock)
			{
				with (instance_place(x, (y+3), obj_metalblock))
					instance_destroy(self)
			} else {
		state = states.knight
			}
}
	if (grounded)
	{
		if (place_meeting(x,y+2,obj_slope))
		{
			var slopexscale = instance_place(x,y+1,obj_slope)
	image_xscale = clamp(-slopexscale.image_xscale,-1,1)
			hsp = (image_xscale * hsp_momentum)
			state = states.knightslide
			hsp_momentum = approach(hsp,4, 0.05)
			sprite_index = spr_knightslide
			groundtimer = 25
		} else if (place_meeting(x,y+2,obj_slopePlatform))
		{
			var slopexscale = instance_place(x,y+1,obj_slopePlatform)
	image_xscale = clamp(-slopexscale.image_xscale,-1,1)
			hsp = (image_xscale * hsp_momentum)
			state = states.knightslide
			hsp_momentum = approach(hsp,4, 0.05)
			sprite_index = spr_knightslide
			groundtimer = 25
		}
	}
		if (grounded && keyboard_check(ord("Z"))) {
		vsp = -9
		grounded = false
				sprite_index = spr_knightjump
		state = states.knightjump
			  scr_sssound(sound_jump)
			   instance_create(x, y, obj_jumpdust);
	}
}
function scr_player_knightjump() {
		canmove = 0
			if (grounded)
	{
		if (place_meeting(x,y+2,obj_slope))
		{
			var slopexscale = instance_place(x,y+1,obj_slope)
	image_xscale = clamp(-slopexscale.image_xscale,-1,1)
			hsp = (image_xscale * hsp_momentum)
			state = states.knightslide
			hsp_momentum = approach(hsp,4, 0.05)
			sprite_index = spr_knightslide
			groundtimer = 25
		} else if (place_meeting(x,y+2,obj_slopePlatform))
		{
			var slopexscale = instance_place(x,y+1,obj_slopePlatform)
	image_xscale = clamp(-slopexscale.image_xscale,-1,1)
			hsp = (image_xscale * hsp_momentum)
			state = states.knightslide
			hsp_momentum = approach(hsp,4, 0.05)
			sprite_index = spr_knightslide
			groundtimer = 25
		}
	}
		if (grounded) {
	if place_meeting(x , y+3, obj_metalblock)
			{
				with (instance_place(x, (y+3), obj_metalblock))
					instance_destroy(self)
			} else {
		state = states.knight
			}
}

		var move = (keyboard_check(vk_right) - keyboard_check(vk_left))
	hsp = approach(hsp, move * 6, 0.62)
	if (move != 0)
	{
		image_xscale = move
			image_speed = 0.4;
		sprite_index = spr_knightjump
			}
			else {
		sprite_index = spr_knightjump
	image_speed = 0.4;
	}
		if (grounded) {
	state = states.knight
	  instance_create(x, y, obj_landcloud);
	}
} 
function scr_player_fireass()
{
		canmove = 0
					image_speed = 0.4;
	if (grounded) {
	state = states.normal	
	  instance_create(x, y, obj_landcloud);
	}
		var move = (keyboard_check(vk_right) - keyboard_check(vk_left))
	hsp = approach(hsp, move * 6, 0.42)
	if (move != 0)
	{
		image_xscale = move
			image_speed = 0.4;
		sprite_index = spr_fireass
						image_speed = 0.4;
	}
	else {
			image_speed = 0.4;
	
						sprite_index = spr_fireass

		}
}
//@rank
function scr_player_getrank() {
	vsp = 0
	hsp = 0
		canmove = 0
}
	//@timesup
function scr_player_timesup() {
		canmove = 0
	sprite_index = spr_timesupanim
	if place_meeting(x,y,obj_timesup)
	{

	state = states.gameover
	sprite_index = spr_deathend
	vsp = -8
	hsp = -4
	}

	if room = timesuproom
	{
	obj_player.x = 480
	obj_player.y = 270
	}

	if floor(image_index) = 9
	image_speed = 0
}
function scr_player_gameover() {
	canmove = 0
image_speed = 0.35

	//Horizontal Collision
	if (place_meeting(x+floor(hsp),y,obj_null))
	{
	x = floor(x);
	    while(!place_meeting(x+sign(hsp),y,obj_null))
	    {
	        x += sign(hsp);
	    }
	    hsp = 0;
	}
	x += hsp;

	//Vertical Collision
	if (place_meeting(x,y+floor(vsp),obj_null)) 
	{
	y = floor(y);
	    while(!place_meeting(x,y+sign(vsp),obj_null))
	    {
	        y += sign(vsp);
	    }
	    vsp = 0;
	}
	y += floor(vsp);

	if (vsp < 30) vsp += grav;

	
}
	//@basic shit
function scr_player_grab()
{
    canmove = 0
    if (grounded)
        sprite_index = spr_shoulderbash
    else
        sprite_index = spr_shoulderbashair
    
    image_speed = 0.5
    hsp = 8 * image_xscale
    
    if grounded
    {
        if floor(image_index) == image_number - 1
        {
            canmove = 1
            state = states.normal    
        }
    } 
    else if grounded
    {
        state = states.normal
        canmove = 1
    }
    
    if place_meeting(x + image_xscale, y, obj_solid)
    {
        canmove = 1
        state = states.normal    
    }
    if grounded && floor(image_index) == image_number - 1
    {
        if keyboard_check(vk_shift)
        {
            state = states.mach    
            canmove = 1
        }
    }
    
    // grab cancel
    if keyboard_check_pressed(vk_left) and image_xscale == 1
    or keyboard_check_pressed(vk_right) and image_xscale == -1
    {
        canmove = 1
        state = states.normal
    }
}