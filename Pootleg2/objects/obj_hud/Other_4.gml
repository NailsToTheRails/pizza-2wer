switch (room)
{
	case test:
		global.srank = 6100;
		break;
			case medieval_1:
		global.srank = 9200;
		break;
}

global.arank = floor(global.srank / 2);
global.brank = floor(global.arank / 2);
global.crank = floor(global.brank / 2);
global.drank = floor(global.crank / 2);