_menuItems = [
	[
		["RPF_Mayor", "(typeof CurrentCursorTarget IN [""Land_Centrelink"",""Land_CommonwealthBank"",""Land_Bank_DED_House_01_F"", ""Land_Atm_01_F""] || str CurrentCursorTarget find ""mcl_atm"" > -1)"],
		["Open Mayor ATM", "[] call ClientModules_Mayor_fnc_openATM",3]
	],

	[
		["RPF_Mayor", "player distance myhouse < 25"],
		["Set taxes", "createdialog ""tax_menu"";",3]
	],

	[
		["RPF_Mayor", "player distance myhouse < 25"],
		["Buy Assasin", "[] call ClientModules_Mayor_fnc_buyAssasinInv;",3]
	],

	[
		["RPF_Mayor", "player distance myhouse < 25"],
		["Stój burmistrza", "player forceAddUniform ""vvv_traje_ejecutivo_1"";",4]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;

Mayor_inited = true;
diag_log "Mayor Module inited";