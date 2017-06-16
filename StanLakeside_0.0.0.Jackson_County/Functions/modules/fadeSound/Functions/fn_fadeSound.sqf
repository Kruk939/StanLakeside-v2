if (!RPF_fadeSound) then {
	1 fadeSound 0.1;
	[(localize "STR_RPF_MODULES_FADESOUND_FADEON"), false] spawn ClientModules_Notification_fnc_doMsg;
	RPF_fadeSound = true;
} else {
	1 fadeSound 1;
	[(localize "STR_RPF_MODULES_FADESOUND_FADEOFF"), false] spawn ClientModules_Notification_fnc_doMsg;
	RPF_fadeSound = false;
};
