private["_menuItems"];
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
		["(count company_var_active_data) > 0","count attachedObjects player == 0", "!RPF_attachedVehicle", "player distance myhouse < 30 || str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""] || (typeOF cursorTarget) find ""Hangar_F"" > -1"],
		["Open Company Garage", "[cursorObject] call ClientModules_Company_fnc_openGarage",1]
	],
	[
		["(typeof cursorobject IN [""Land_PoliceStation"",""cl3_policehq""]) && [1] call ClientModules_Company_fnc_inCompanyCheck","(count company_var_active_data) > 0","count attachedObjects player == 0", "!RPF_attachedVehicle", "player distance myhouse < 30 || str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""] || (typeOF cursorTarget) find ""Hangar_F"" > -1"],
		["Open Company Garage", "[cursorObject] call ClientModules_Company_fnc_openGarage",1]
	],
	[
		["(typeof cursorobject IN [""Land_PoliceStation"",""cl3_policehq""]) && [2] call ClientModules_Company_fnc_inCompanyCheck","(count company_var_active_data) > 0","count attachedObjects player == 0", "!RPF_attachedVehicle", "player distance myhouse < 30 || str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""] || (typeOF cursorTarget) find ""Hangar_F"" > -1"],
		["Open Company Garage", "[cursorObject] call ClientModules_Company_fnc_openGarage",1]
	],
	[
		["(typeof cursorobject IN [""Land_PoliceStation"",""cl3_policehq""]) && [3] call ClientModules_Company_fnc_inCompanyCheck","(count company_var_active_data) > 0","count attachedObjects player == 0", "!RPF_attachedVehicle", "player distance myhouse < 30 || str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""] || (typeOF cursorTarget) find ""Hangar_F"" > -1"],
		["Open Company Garage", "[cursorObject] call ClientModules_Company_fnc_openGarage",1]
	],
	[
		["(typeof cursorobject == ""Land_buildingshospital1"" || player distance getmarkerpos ""marker_30"" < 15 || player distance getmarkerpos ""marker_31"" < 15) && [4] call ClientModules_Company_fnc_inCompanyCheck","(count company_var_active_data) > 0","count attachedObjects player == 0", "!RPF_attachedVehicle", "player distance myhouse < 30 || str CurrentCursorTarget find ""otros"" > -1 || str CurrentCursorTarget find ""garaje"" > -1 || str CurrentCursorTarget find ""tallerdepinturaabandonado"" > -1 || typeof CurrentCursorTarget IN [""Land_ModernShowroom""] || (typeOF cursorTarget) find ""Hangar_F"" > -1"],
		["Open Company Garage", "[cursorObject] call ClientModules_Company_fnc_openGarage",1]
	],
	[
		["(typeof cursorobject IN [""Land_PoliceStation"",""cl3_policehq""]) && [1] call ClientModules_Company_fnc_inCompanyCheck && (count company_var_active_data) == 0"],
		[(localize "STR_RPF_MODULES_COMPANY_START_PD"), "[1] spawn ClientModules_Company_fnc_job_start;",3]
	],
	[
		["(typeof cursorobject IN [""Land_PoliceStation"",""cl3_policehq""]) && [2] call ClientModules_Company_fnc_inCompanyCheck && (count company_var_active_data) == 0"],
		[(localize "STR_RPF_MODULES_COMPANY_START_FBI"), "[2] spawn ClientModules_Company_fnc_job_start;",3]
	],
	[
		["(typeof cursorobject IN [""Land_PoliceStation"",""cl3_policehq""]) && [3] call ClientModules_Company_fnc_inCompanyCheck && (count company_var_active_data) == 0"],
		[(localize "STR_RPF_MODULES_COMPANY_START_DOC"), "[3] spawn ClientModules_Company_fnc_job_start;",3]
	],
	[
		["(typeof cursorobject IN [""Land_PoliceStation"",""cl3_policehq""]) && ([1] call ClientModules_Company_fnc_inCompanyCheck || [2] call ClientModules_Company_fnc_inCompanyCheck || [3] call ClientModules_Company_fnc_inCompanyCheck) && (count company_var_active_data) != 0"],
		[(localize "STR_RPF_MODULES_COMPANY_STOP"), "[] spawn ClientModules_Company_fnc_job_stop;",3]
	],
	[
		["(typeof cursorobject == ""Land_buildingshospital1"" || player distance getmarkerpos ""marker_30"" < 15 || player distance getmarkerpos ""marker_31"" < 15) && [4] call ClientModules_Company_fnc_inCompanyCheck && (count company_var_active_data) == 0"],
		[(localize "STR_RPF_MODULES_COMPANY_START_EMS"), "[4] spawn ClientModules_Company_fnc_job_start;",3]
	],
	[
		["(typeof CurrentCursorTarget == ""Land_Centrelink"") && (count company_var_active_data) == 0"],
		[(localize "STR_RPF_MODULES_COMPANY_START_JOB"), "[4] spawn ClientModules_Company_fnc_start_open;",3]
	],
	[
		["(typeof CurrentCursorTarget == ""Land_Centrelink"") && (count company_var_active_data) > 0"],
		[(localize "STR_RPF_MODULES_COMPANY_STOP"), "[] spawn ClientModules_Company_fnc_job_stop;",3]
	],
	[
		["(typeof cursorobject == ""Land_buildingshospital1"" || player distance getmarkerpos ""marker_30"" < 15 || player distance getmarkerpos ""marker_31"" < 15) && [4] call ClientModules_Company_fnc_inCompanyCheck && (count company_var_active_data) != 0"],
		[(localize "STR_RPF_MODULES_COMPANY_STOP"), "[] spawn ClientModules_Company_fnc_job_stop;",3]
	]
];

{
	RPF_InteractionMenuItems pushBack _x;
} forEach _menuItems;
