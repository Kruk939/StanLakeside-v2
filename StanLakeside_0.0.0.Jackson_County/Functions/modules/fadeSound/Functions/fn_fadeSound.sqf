if (!RPF_fadeSound) then {
	1 fadeSound 0.1;
	["Poziom głośności został obniżony", false] spawn ClientModules_Notification_fnc_doMsg;
	RPF_fadeSound = true;
} else {
	1 fadeSound 1;
	["Poziom głośności wrócił do normy", false] spawn ClientModules_Notification_fnc_doMsg;
	RPF_fadeSound = false;
};