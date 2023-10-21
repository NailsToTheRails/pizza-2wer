pause = 0
sel = 0
array = [
	["EXIT LEVEL", 0],
	["RESTART LEVEL", 0],
	["RESUME LEVEL", 0],
]
for(var i = 0; i < array_length(array); i++)
{
	if room == array[i][1]
	{
		sel = i;
		break;
	}
}