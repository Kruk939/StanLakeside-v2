company_inited = false;
private["_menuItems"];
/*_menuItems = [
	[
		["CurrentCursorTarget getVariable[""dead"",FALSE] && (myjob == ""EMS"" || myJob == ""Fire"")"],
		["Reanimuj", "['Reanimacja',15,ClientModules_Medical_fnc_revive,player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_mission_files\sounds\patdown1.ogg"",0] spawn client_fnc_dotask; paycheck = paycheck + 125;",1]
	]
];
*/
_menuItems = [
	[
		["(typeof CurrentCursorTarget IN [""Land_Centrelink"",""Land_CommonwealthBank"",""Land_Bank_DED_House_01_F""]) && (count company_var_active_data) != 0"],
		[(localize "STR_RPF_MODULES_COMPANY_ATM_OPEN"), "[] spawn { closeDialog 0; uiSleep 0.2; [] call ClientModules_Company_fnc_openATM; RPF_ATMType = ""Bank""; }",3]
	],
	[
		["(typeof CurrentCursorTarget isEqualTo ""Land_Atm_01_F"" || str CurrentCursorTarget find ""mcl_atm"" > -1) && (count company_var_active_data) != 0"],
		[(localize "STR_RPF_MODULES_COMPANY_ATM_OPEN"), "[] spawn { closeDialog 0; uiSleep 0.2; [] call ClientModules_Company_fnc_openATM; RPF_ATMType = ""Bank""; }",3]
	],
	[
		["(typeof cursorobject == ""Land_PoliceStation"") && [1] call ClientModules_Company_fnc_inCompanyCheck && (count company_var_active_data) == 0"],
		[(localize "STR_RPF_MODULES_COMPANY_START_PD"), "[1] spawn ClientModules_Company_fnc_job_start;",3]
	],
	[
		["(typeof cursorobject == ""Land_PoliceStation"") && [2] call ClientModules_Company_fnc_inCompanyCheck && (count company_var_active_data) == 0"],
		[(localize "STR_RPF_MODULES_COMPANY_START_FBI"), "[2] spawn ClientModules_Company_fnc_job_start;",3]
	],
	[
		["(typeof cursorobject == ""Land_PoliceStation"") && [3] call ClientModules_Company_fnc_inCompanyCheck && (count company_var_active_data) == 0"],
		[(localize "STR_RPF_MODULES_COMPANY_START_DOC"), "[3] spawn ClientModules_Company_fnc_job_start;",3]
	],
	[
		["(typeof cursorobject == ""Land_PoliceStation"") && ([1] call ClientModules_Company_fnc_inCompanyCheck || [2] call ClientModules_Company_fnc_inCompanyCheck || [3] call ClientModules_Company_fnc_inCompanyCheck) && (count company_var_active_data) != 0"],
		[(localize "STR_RPF_MODULES_COMPANY_STOP"), "[] spawn ClientModules_Company_fnc_job_stop;",3]
	],
	[
		["(typeof cursorobject == ""Land_buildingshospital1"" || player distance getmarkerpos ""marker_30"" < 15 || player distance getmarkerpos ""marker_31"" < 15) && [4] call ClientModules_Company_fnc_inCompanyCheck && (count company_var_active_data) == 0"],
		[(localize "STR_RPF_MODULES_COMPANY_START_EMS"), "[4] spawn ClientModules_Company_fnc_job_start;",3]
	],
	[
		["(typeof cursorobject == ""Land_buildingshospital1"" || player distance getmarkerpos ""marker_30"" < 15 || player distance getmarkerpos ""marker_31"" < 15) && [4] call ClientModules_Company_fnc_inCompanyCheck && (count company_var_active_data) != 0"],
		[(localize "STR_RPF_MODULES_COMPANY_STOP"), "[] spawn ClientModules_Company_fnc_job_stop;",3]
	]
];

{
	RPF_InteractionMenuItems pushBack _x;
} forEach _menuItems;

//RPF_ItemNames pushBack ["OfficeTable_01_new_F", "Meth Lab"];
company_var_data = [];
company_var_active_data = [];
company_var_privliges = [];
company_var_active_bank = [];

//Init serwerowy
[player, getPlayerUID player] remoteExec ["ServerModules_Company_fnc_startInit",2];
