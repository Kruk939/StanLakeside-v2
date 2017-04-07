/*
		Author: Kajetan "Kruk" Mruk
		Date: 07.04.2017
		Description: SLPD System Tickets, PD Computer etc.
*/

_menuItems = [
	[
		["player getVariable ['cop', 0] > 0", "(( typeof cursorobject == ""Land_PoliceStation"") || ( vehicle player != player )) "],
		["Komputer Policyjny", "createdialog ""kruk_slpd_computer"";",4]
	],

	[
		["player getVariable ['cop', 0] > 0", "CurrentCursorTarget isKindOf 'Man'", "isPlayer cursorObject"],
		["Wypisz mandat", " createdialog ""kruk_slpd_ticket_give""; ",2]
	],
	
	[
		["player getVariable ['cop', 0] > 0", "CurrentCursorTarget isKindOf 'Man'", "getpos player distance [5556.2,6291.29,0.00143433] < 100"],
		["Aresztuj", " createdialog ""jailprocess"";",2]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;

_cModules = [
	"ClientModules_fnc_slpd_speedmeter"
];

{
	[] call (call compile _x);
}forEach _cModules;