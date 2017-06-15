/*
Author: Kerkkoh
First Edit: 2.1.2017
*/
RPF_spawnPointsAir = [
	[3375.8,891.945,0.00144196],
	[3866.85,889.322,0.00144196],
	[4233.33,886.342,0.00144196]
];
RPF_spawnPointsSecondAir = [
	[2277.91,8754.57,0.00143909]
];
RPF_southAirPort = [3279.38,994.623,0.00144196];
RPF_attachedVehicle = false;
//RPF_Keys = [];

_menuItems = [
	[
		["cursorObject isKindOf 'Car'", "cursorObject in RPF_Cars", "(player distance cursorObject) <= 5"],
		["Store Vehicle", "[cursorObject] call ClientModules_Garage_fnc_storeCar",1]
	],
	[
		["count attachedObjects player > 0", "RPF_attachedVehicle"],
		["Puść pojazd", "[] call ClientModules_Garage_fnc_detachCar",1]
	],
	[
		["count attachedObjects player == 0", "!RPF_attachedVehicle", "player distance myhouse < 30 || str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""] || (typeOF cursorTarget) find ""Hangar_F"" > -1"],
		["Open Garage", "[cursorObject] call ClientModules_Garage_fnc_openGarage",1]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;

Garage_inited = true;
diag_log "Garage Module inited";