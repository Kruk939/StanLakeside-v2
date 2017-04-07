/*
Author: Kerkkoh
First Edit: 17.4.2016

Additional Information:
Adds basic ticketing on site for police personel
*/

_menuItems = [
	[
		["(player getVariable ['cop', 0]) > 0", "isPlayer cursorObject", "(player distance cursorObject) <= 5"],
		["Issue Ticket", "[cursorObject] call ClientModules_fnc_ticket",1]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;