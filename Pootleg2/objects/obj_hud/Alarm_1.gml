if ((global.panic == 1))
{
    global.seconds -= 1
    if (global.seconds < 0)
    {
        global.seconds = 59
        global.minutes -= 1
    }
}

if ((global.panic == 1))
{
   global.collect -= 5
}

alarm[1] = 60






