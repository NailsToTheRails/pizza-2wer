global.collect = clamp(global.collect, 0, 99999)
if global.seconds <= 0 && global.minutes <= 0 && ded = false
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
if (global.seconds < 0)
{
    global.seconds = 59
    global.minutes -= 1
}
if (global.seconds > 59)
{
    global.minutes += 1
    global.seconds -= 59
}

		
		
		if (room = rankroom) {
		visible = false	
		} else {
		visible = true	
		}