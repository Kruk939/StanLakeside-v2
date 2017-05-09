diag_log "ieh inited 1";
player addEventHandler["InventoryOpened", {
	_this call ClientModules_IEH_fnc_ieh_InventoryOpened;
}];
//hint "ieh inited";
diag_log "ieh inited 2";

_usableItems = [
	["NP_GrowingPlot", "hint ""hello i'm work"";"]
];
{
	RPF_Usables pushBack _x;
}forEach _usableItems;

IEH_inited = true;
diag_log "IEH Module inited";