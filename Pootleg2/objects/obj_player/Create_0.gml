scr_collision_init();
scr_realinit();
scr_enuminit();
mach1snd = -1
mach2snd = -1
mach3snd = -1
paletteselect = 1;
global.palettetexture = -4;
global.palettesurface = -4;
global.palettesurfaceclip = -4;


grav = GRAVITY_DEFAULT
hsp_momentum = 0
hsp = 0
mach = 0
character = "P"
global.srank = 0;
global.arank = 0;
global.brank = 0;
global.crank = 0;
global.secretfound = 0
		mach2ing = false
		spotlight = 1
		xscale = image_xscale
		global.saveroom = ds_list_create()
terminalVelocity = 14;
coyotetime = 1;
global.solidvisibility = false
global.shroomfollow = false
global.cheesefollow = false
global.tomatofollow = false
global.sausagefollow = false
global.pineapplefollow = false
global.panic = false
global.seconds = 25
global.minutes = 1
global.toppintotal = 1
vsp = 0
  global.wave = 0
    global.maxwave = (((global.minutes * 60) + global.seconds) * 60)
jumpAnim = 1;
hallwaydirection = 0;
hallway = 0;
hp = 8
hurtframes = 0
state = states.normal
targetRoom = room
targetDoor = "A"
savedposition = false;
savedx = x;
savedy = y;
fadein = 0
//yeah thats it for now