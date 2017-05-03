/*
Author: Kerkkoh
First Edit: 22.4.2016
*/

_menuItems = [
	[
		["player getVariable ['cop', 0] > 0", "((position player) distance (getMarkerPos 'jail')) <= 15", "isPlayer cursorObject", "(player distance cursorObject) <= 2"],
		["Arrest", "[cursorObject] call ClientModules_Jail_fnc_openArrestMenu",1]
	],
	[
		["((position player) distance (getMarkerPos 'jail')) <= 15", "player getVariable ['cop', 0] <= 0", "(isNil {player getVariable 'jailed'}) || !(player getVariable 'jailed')"],
		["Breakout", "[] call ClientModules_Jail_fnc_openJailBreakout",1]
	],
	[
		["player getVariable ['cop', 0] > 0", "((position player) distance (getMarkerPos 'jail')) <= 15"],
		["Free prisoners", "[] call ClientModules_Jail_fnc_openFreePrisoners",1]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;

Jail_inited = true;
diag_log "Jail Module inited";