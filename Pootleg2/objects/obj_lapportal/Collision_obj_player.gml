//why
if (global.panic = 1) {
room_goto(targetRoom)	
obj_player.x = targetX
obj_player.y = targetY
global.laps +=1

if (global.laps <= 2) {
global.seconds += 10
global.collect += 1000
global.minutes += 1
} else {
global.collect += 2000
global.minutes += 0
global.seconds += 50
}

}