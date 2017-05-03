/*
		Author: Kajetan "Kruk" Mruk
		Date: 07.04.2017
		Description: SLPD System Tickets, PD Computer etc.
*/
ClientArrested = false;
reason = "";

_menuItems = [
	[
		["player getVariable ['cop', 0] > 0", "(( typeof cursorobject == ""Land_PoliceStation"") || ( vehicle player != player )) "],
		["Komputer Policyjny", "createdialog ""kruk_slpd_computer"";",4]
	],

	[
		["player getVariable ['cop', 0] > 0", "CurrentCursorTarget isKindOf 'Man'", "isPlayer cursorObject", "(player distance cursorObject) <= 2"],
		["Wypisz mandat", " createdialog ""kruk_slpd_ticket_give""; ",2]
	],
	
	[
		["player getVariable ['cop', 0] > 0", "CurrentCursorTarget isKindOf 'Man'", "getpos player distance [5556.2,6291.29,0.00143433] < 100" , "isPlayer cursorObject", "(player distance cursorObject) <= 2"],
		["Aresztuj", " createdialog ""jailprocess"";",2]
	],

	[
		["ClientArrested"],
		["Długo jeszcze?", "hint format[""Pozostało %1 miesięcy. Powód aresztowania: %2"",secondsLeft, reason];",4]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;

[] call ClientModules_SLPD_fnc_speedmeter;

SLPD_inited = true;
diag_log "SLPD Module inited";