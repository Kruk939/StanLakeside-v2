client_intox = 0;

_menuItems = [
	[
		["(player getVariable ['ems', 0] > 0) || (player getVariable ['cop', 0] > 0)","(isplayer currentcursortarget && currentcursortarget isKindOf ""Man"")"],
		["Poziom ‰ krwi", " [currentcursortarget] spawn client_fnc_testIntox; ",4]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;
