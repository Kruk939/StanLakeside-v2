_menuItems = [
	[
		["player getVariable ['mafia', 0] > 0", "player distance myhouse < 15", "RPF_currentJob == ""Mafia"""],
		["Go off duty", "[0, 3] call Client_fnc_switchDutyStatus",1]
	],
	[
		["player getVariable ['mafiaoffduty', 0] > 0", "player distance myhouse < 15", "RPF_currentJob == ""none"""],
		["Go on duty", "[1, 3] call Client_fnc_switchDutyStatus",1]
	],
	[
		["RPF_Mayor", "player distance myhouse < 25"],
		["Buy Assasin", "[] call ClientModules_Mayor_fnc_buyAssasinInv;",3]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;

Mafia_inited = true;
diag_log "Mafia Module inited";