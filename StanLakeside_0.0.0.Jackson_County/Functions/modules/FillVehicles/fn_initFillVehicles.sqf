{_x setFuelCargo 0;} forEach (nearestObjects [[6728.31,5269.87,0.56609], ["Land_fs_feed_F"], 30000]);
Rpf_filling = 0;
FillVehicles_var_startPos = getpos player;

_menuItems = [
	[
		["Rpf_filling isEqualTo 0", "(typeof cursorobject) isEqualTo ""Land_fs_feed_F"" ", "(player distance CurrentCursorTarget) < 3"],
		["Zatankuj", "[] spawn ClientModules_FillVehicles_fnc_setFill", 2]
	],
	[
		["cursorTarget isKindOf ""Car"" || cursorTarget isKindOf ""Air"" || cursorTarget isKindOf ""Ship""", "Rpf_filling isEqualTo 1", "(player distance CurrentCursorTarget) < 3", "player distance FillVehicles_var_startPos < 5"],
		["Ten pojazd", "[cursorTarget] spawn ClientModules_FillVehicles_fnc_fillVehicle", 2]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
} forEach _menuItems;

FillVehicles_inited = true;
diag_log "FillVehicles Module inited";
