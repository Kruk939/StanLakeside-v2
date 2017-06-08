player setVariable ["usingHouseCargo", false, true];

_menuItems = [
	[
		["player distance myhouse < 10", "!(player getVariable ['usingHouseCargo',true])"],
		[(localize "STR_RPF_MODULES_HOUSING_INVENTORY"), "[player] remoteExecCall [""ServerModules_Housing_fnc_retreiveHouseCargo"",2];",4]
	],

	[
		["(cursorTarget getVariable ['uid',true]) isEqualTo (getPlayerUID player)"],
		[(localize "STR_RPF_MODULES_HOUSING_CLOSEINVENTORY"), "[player,cursorObject] remoteExecCall [""ServerModules_Housing_fnc_storageHouseCargo"",2];",4]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;

Housing_inited = true;
diag_log (localize "STR_RPF_MODULES_HOUSING_INITED");