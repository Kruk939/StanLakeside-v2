Rpf_filling = 0;
FillVehicles_var_vehicleLIST = [];

_menuItems = [
	[
		["Rpf_filling isEqualTo 0", "(typeof cursorobject) isEqualTo ""Land_fs_feed_F"" ", "(player distance CurrentCursorTarget) < 3"],
		["Zatankuj", "[] spawn ClientModules_FillVehicles_fnc_setFill;", 2]
	],
	[
		["(FillVehicles_var_vehicleLIST find cursorTarget) != -1", "Rpf_filling isEqualTo 1", "(player distance CurrentCursorTarget) < 3"],
		["Ten pojazd", "[cursorTarget] spawn ClientModules_FillVehicles_fnc_fillVehicle;", 2]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
} forEach _menuItems;

FillVehicles_inited = true;
diag_log "FillVehicles Module inited";
