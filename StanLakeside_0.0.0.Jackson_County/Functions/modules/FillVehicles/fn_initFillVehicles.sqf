{ _x setFuelCargo 0; } forEach (nearestObjects [[6728.31,5269.87,0.56609], ["Land_fs_feed_F"], 20000]);

_menuItems = [
	[
		[" typeof cursorobject == ""Land_fs_feed_F"" "],
		["Zatankuj", "[] call ClientModules_FillVehicles_fnc_fillVehicle;",2]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;

FillVehicles_inited = true;
diag_log "FillVehicles Module inited";