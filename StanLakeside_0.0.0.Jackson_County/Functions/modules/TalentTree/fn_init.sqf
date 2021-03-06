scriptName "fn_init";
/*--------------------------------------------------------------------
	Author: Maverick (ofpectag: MAV)
    File: fn_init.sqf

	<Maverick Applications>
    Written by Maverick Applications (www.maverick-apps.de)
    You're not allowed to use this file without permission from the author!
--------------------------------------------------------------------*/
#define __filename "fn_init.sqf"

[] spawn {
	//diag_log "fn_init.sqf 1";
	if (isServer && !hasInterface) exitWith {};

	//diag_log "fn_init.sqf 2";
	life_perksInitialized = false;
	life_currentExpPerks = (0 call mav_ttm_fnc_generateBasePerks);
	life_currentExpLevel = 0;
	life_currentExp = 0;
	life_currentPerkPoints = 0;
	mav_ttm_var_lockpickMultiplier = 1;
	mav_ttm_var_paycheckMultiplier = 1;
	mav_ttm_var_repairToReduce = 0;
	mav_ttm_var_mechanicRent = 1;
	mav_ttm_var_bonusExp = 0;


	//diag_log "fn_init.sqf 3";

	// Wait until player is ready
	waitUntil {player == player};

	// Request data from server
	diag_log "TalentTree: Requesting experience data from server";
	[player] remoteExec ["mav_ttm_fnc_loadFromDatabase", 2];

	// Create auto-retry thread
	[] spawn {
		while {!life_perksInitialized} do
		{
			sleep 60;
			if (life_perksInitialized) exitWith {};
			diag_log "TalentTree: Requesting experience data from server (RETRY)";
			[player] remoteExec ["mav_ttm_fnc_loadFromDatabase", 2];
		};
	};

	// Add handler to display
	waitUntil {!isNull (findDisplay 46)};
	["StanLakeside.pl","TalentTreeKey","Talent Tree Key",{call mav_ttm_fnc_openGUI},{true},[0x14, [false, true, false]],false] call cba_fnc_addKeybind;
	diag_log "TalentTree Module inited";
};