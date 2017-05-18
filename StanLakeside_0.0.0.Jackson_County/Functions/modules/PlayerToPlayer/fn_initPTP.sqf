_menuItems = [
	[
		["isPlayer cursorObject", "(animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop'"],
		["Przeszukaj", " ['Przeszukiwanie',10,ClientModules_PTP_fnc_startpatdown,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn ClientModules_doTask_fnc_dotask ",2]
	],

	[
		["isPlayer cursorObject", "!imRestrained", "(headgear CurrentCursorTarget) != 'mgsr_headbag', (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop'"],
		["Załóż worek", " ['Zakładanie worka',5,ClientModules_PTP_fnc_blindfold,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""sl_client\sounds\blindfold.ogg"",0] spawn ClientModules_doTask_fnc_dotask ",2]
	],

	[
		["isPlayer cursorObject", "!imRestrained", "(headgear CurrentCursorTarget) == 'mgsr_headbag' "],
		["Zdejmij worek", " ['Zdejmowanie worka',5,ClientModules_PTP_fnc_unblindfold,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""sl_client\sounds\blindfold.ogg"",0] spawn ClientModules_doTask_fnc_dotask",2]
	],

	[
		[" myJob == ""Cop""",  "isPlayer cursorObject", "(animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop'"],
		["Wrzuć do auta", " ['Wrzucanie do auta',10,client_fnc_putincar,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask ",2]
	],

	[
		[" myJob != ""Cop""",  "isPlayer cursorObject", "(animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop'"],
		["Wrzuć do auta", " ['Wrzucanie do auta',5,ClientModules_PTP_fnc_putincar,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn ClientModules_doTask_fnc_dotask ",2]
	],

	[
		["isPlayer cursorObject", "(player distance cursorObject) <= 5"],
		["Daj pieniądze", "[cursorObject] call Client_fnc_giveCash",1]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;

RPF_blindfolded = false;
RPF_oldHeadgear = nil;

PTP_inited = true;
diag_log "PlayerToPlayer Module inited";