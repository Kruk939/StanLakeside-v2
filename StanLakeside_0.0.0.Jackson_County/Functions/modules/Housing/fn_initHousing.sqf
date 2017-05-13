player setVariable ["usingHouseCargo", false, true];

_menuItems = [
	[
		["player distance myhouse < 10", "!(player getVariable ['usingHouseCargo',true])"],
		["Wyposażenie domu", "[player] remoteExec [""ServerModules_Housing_fnc_retreiveHouseCargo"",2];",4]
	],

	[
		["(cursorTarget getVariable ['uid',true]) isEqualTo (getPlayerUID player)"],
		["Zamknij skrzynię", "[player,cursorObject] remoteExec [""ServerModules_Housing_fnc_storageHouseCargo"",2];",4]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;

Housing_inited = true;
diag_log "Housing Module inited";