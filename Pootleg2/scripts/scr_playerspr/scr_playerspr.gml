function scr_playerspr() {
		if (character == "P") {
			spr_palette = spr_peppalette
				spr_idle = spr_player_idle
spr_walk = spr_player_move
spr_jump = spr_player_jump
spr_fall = spr_player_fall
spr_walljump = spr_player_jump
spr_hurt = spr_player_hurt
spr_crouchjump = spr_player_crouchjump
spr_crouchfall = spr_player_crouchfall
spr_crouchmove = spr_player_crawl
spr_crouchidle = spr_player_crouch
spr_comingoutofdoor = spr_player_walkfront
spr_goingindoor = spr_player_lookdoor
spr_groundpoundstart = spr_player_bodyslamstart
spr_groundpound = spr_player_bodyslamfall
spr_groundpoundend = spr_player_bodyslamland
spr_mach = spr_player_mach4
spr_machturn = spr_player_machslideboost3
spr_machjump = spr_player_mach2jump
spr_machend = spr_player_mach3hitwall
spr_machroll = spr_player_machroll
spr_knightidle = spr_knightpep_idle
spr_knightwalk = spr_knightpep_walk
spr_knightjump = spr_knightpep_jump
spr_knightslide = spr_knightpep_charge
spr_fireass = spr_player_fireass
spr_panicidle = spr_player_panic	
spr_timesupanim = spr_player_timesup
spr_deathend = spr_player_deathend
spr_mach2 = spr_player_mach
spr_mach1 = spr_player_mach1
spr_mach2turn = spr_player_machslideboost
spr_wallrun = spr_player_climbwall
		}
			if (character == "SP") {
					spr_palette = spr_pizzypalette
			    spr_idle = spr_playerSP_idle
    spr_walk = spr_playerSP_walk
    spr_jump = spr_playerSP_jump
    spr_fall = spr_playerSP_fall
    spr_walljump = spr_playerSP_jump
    spr_hurt = spr_playerSP_hurt
    spr_crouchjump = spr_playerSP_crouchjump
    spr_crouchfall = spr_playerSP_crouchfall
    spr_crouchmove = spr_playerSP_crawl
    spr_crouchidle = spr_playerSP_crouch
    spr_comingoutofdoor = spr_playerSP_walkfront
    spr_goingindoor = spr_playerSP_lookdoor
    spr_groundpoundstart = spr_playerSP_bodyslamstart
    spr_groundpound = spr_playerSP_bodyslamfall
    spr_groundpoundend = spr_playerSP_bodyslamland
    spr_mach = spr_playerSP_mach4
    spr_machturn = spr_playerSP_machslideboost3
    spr_machjump = spr_playerSP_mach2jump
    spr_machend = spr_playerSP_mach3hitwall
    spr_machroll = spr_playerSP_machroll
    spr_knightidle = spr_knightpizzy_idle
    spr_knightwalk = spr_knightpizzy_walk
    spr_knightjump = spr_knightpizzy_jump
    spr_knightslide = spr_knightpizzy_charge
    spr_fireass = spr_playerSP_fireass
    spr_panicidle = spr_playerSP_escapeidle
    spr_timesupanim = spr_playerSP_timesup
    spr_deathend = spr_playerSP_hurt
    spr_mach2 = spr_playerSP_mach
    spr_mach1 = spr_playerSP_mach1
    spr_mach2turn = spr_playerSP_machslideboost
    spr_wallrun = spr_playerSP_climbwall	
			}
				if (character == "N") {
					spr_palette = spr_noisepalette
					    spr_idle = spr_playerN_idle
    spr_walk = spr_playerN_move
    spr_jump = spr_playerN_jump
    spr_fall = spr_playerN_fall
    spr_walljump = spr_playerN_jump
    spr_hurt = spr_playerN_hurt
    spr_crouchjump = spr_playerN_crouchjump
    spr_crouchfall = spr_playerN_crouchfall
    spr_crouchmove = spr_playerN_crawl
    spr_crouchidle = spr_playerN_crouch
    spr_comingoutofdoor = spr_playerN_walkfront
    spr_goingindoor = spr_playerN_lookdoor
    spr_groundpoundstart = spr_playerN_bodyslamstart
    spr_groundpound = spr_playerN_bodyslam
    spr_groundpoundend = spr_playerN_bodyslamland
    spr_mach = spr_playerN_mach3
    spr_machturn = spr_playerN_mach3boost
    spr_machjump = spr_playerN_mach2jump
    spr_machend = spr_playerN_mach3hitwall
    spr_machroll = spr_playerN_machroll
    spr_knightidle = spr_playerN_knightidle
    spr_knightwalk = spr_playerN_knightmove
    spr_knightjump = spr_playerN_knightjump
    spr_knightslide = spr_playerN_knightslide
    spr_fireass = spr_playerN_fireass
    spr_panicidle = spr_playerN_panicidle
    spr_timesupanim = spr_playerN_timesup
    spr_deathend = spr_playerN_deathend
    spr_mach2 = spr_playerN_mach
    spr_mach1 = spr_playerN_mach1
    spr_mach2turn = spr_playerN_machslideboost
    spr_wallrun = spr_playerN_climbwall
				}
}