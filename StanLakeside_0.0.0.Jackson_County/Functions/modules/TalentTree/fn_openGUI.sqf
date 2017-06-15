if (!dialog && (diag_tickTime - (missionNamespace getVariable ["mav_ttm_lastOpenTime", 0]) > 3)) then {
	mav_ttm_lastOpenTime = diag_tickTime;
	createDialog "TTM_GUI_RscDisplayTalentOverview";
};