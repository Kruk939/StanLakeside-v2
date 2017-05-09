RPF_nos_count = 0;
RPF_can_use_nos = true;
RPF_gopro = false;

_usables = [
	["kif_speedbomb", "[] call ClientModules_UsableItems_fnc_itemSpeedBomb"],
	//["kif_nitro", "[] call ClientModules_UsableItems_fnc_itemNOS"],
	["kif_gopro", "[] call ClientModules_UsableItems_fnc_itemGoPro"]
];
{
	RPF_Usables pushBack _x;
}forEach _usables;

(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call ClientModules_UsableItems_fnc_handleKeys"];
(findDisplay 46) displayAddEventHandler ["KeyUp", "_this call ClientModules_UsableItems_fnc_handleKeys"];

UsableItems_inited = true;
diag_log "UsableItems Module inited";