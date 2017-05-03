/*
Author: Kerkkoh
First Edit: 2.1.2017
*/

_menuItems = [
	[
		["cursorObject isKindOf 'Car'", "cursorObject in RPF_Cars", "[]call ClientModules_Garage_fnc_nearGarage", "(player distance cursorObject) <= 5"],
		["Store Vehicle", "[cursorObject] call ClientModules_Garage_fnc_storeCar",1]
	],
	[
		["!(isNil {cursorObject getVariable 'garage'})", "(player distance cursorObject) <= 5"],
		["Open Garage", "[cursorObject] call ClientModules_Garage_fnc_openGarage",1]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;

Garage_inited = true;
diag_log "Garage Module inited";