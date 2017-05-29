params["_player","_caller","_action","_plant"];

detach _plant;
_player removeAction _action;

[(localize "STR_RPF_MODULES_FARMING_SUCCESSPLANT"),true] call ClientModules_Notification_fnc_doMsg;

if (RPF_currentSeed == "NP_GrowingPlot") then {
_action = _plant addAction [ (localize "STR_RPF_MODULES_FARMING_PLANT"), { 
		params["_target", "_caller", "_id"];
		[_target] spawn ClientModules_Farming_fnc_startWeedGrowing;
		myDrugValue2 = 4;
		totalskills = 4;
		_target removeAction _id;
		_target addAction [ (localize "STR_RPF_MODULES_FARMING_WATER"), { ["Water", (_this select 0)] call ClientModules_Farming_fnc_upGrowing; } ];
		_target addAction [ (localize "STR_RPF_MODULES_FARMING_PRUNE"), { ["Prune", (_this select 0)] call ClientModules_Farming_fnc_upGrowing; } ];
		_target addAction [ (localize "STR_RPF_MODULES_FARMING_COOL"), { ["Cool", (_this select 0)] call ClientModules_Farming_fnc_upGrowing; } ];
		_target addAction [ (localize "STR_RPF_MODULES_FARMING_HEAT"), { ["Heat", (_this select 0)] call ClientModules_Farming_fnc_upGrowing; } ];
		_target addAction [ (localize "STR_RPF_MODULES_FARMING_TURNOVER"), { ["Turnover", (_this select 0)] call ClientModules_Farming_fnc_upGrowing; } ];
		//[player,objNull,25,format ["%1 posadził marychę",name player],""] remoteExec ["server_fnc_actionLog", 2];
	} ];
RPF_plantArray pushBack _plant;

} else {

	_action = _plant addAction [ (localize "STR_RPF_MODULES_FARMING_PLANT"), { 
		params["_target", "_caller", "_id"];
		[_target] spawn ClientModules_Farming_fnc_startGrowing;
		myDrugValue2 = 4;
		totalskills = 4;
		_target removeAction _id;
		_target addAction [ (localize "STR_RPF_MODULES_FARMING_WATER"),, { ["Water", (_this select 0)] call ClientModules_Farming_fnc_upGrowing; } ];
		_target addAction [ (localize "STR_RPF_MODULES_FARMING_PRUNE"), { ["Prune", (_this select 0)] call ClientModules_Farming_fnc_upGrowing; } ];
		//_target addAction [ (localize "STR_RPF_MODULES_FARMING_COOL"), { ["Cool", (_this select 0)] call ClientModules_Farming_fnc_upGrowing; } ];
		//_target addAction [ (localize "STR_RPF_MODULES_FARMING_HEAT"), { ["Heat", (_this select 0)] call ClientModules_Farming_fnc_upGrowing; } ];
		_target addAction [ (localize "STR_RPF_MODULES_FARMING_TURNOVER"), { ["Turnover", (_this select 0)] call ClientModules_Farming_fnc_upGrowing; } ];
		//[player,objNull,25,format ["%1 posadził marychę",name player],""] remoteExec ["server_fnc_actionLog", 2];
	} ];
RPF_plantArray pushBack _plant;

};

RPF_currentSeed = nil;