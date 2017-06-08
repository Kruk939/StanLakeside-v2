params["_usedAction","_object"];
_requiredOutput = _object getVariable["requiredOutput",""];
_checkFinish = _object getVariable["checkFinish",false];
if(_checkFinish) exitwith { [(localize "STR_RPF_MODULES_FARMING_TOOFAST"), false] call ClientModules_Notification_fnc_doMsg; };

if(_requiredOutput == _usedAction) then { 
	[(localize "STR_RPF_MODULES_FARMING_MUSTWORK"), false] spawn ClientModules_Notification_fnc_doMsg;
	playSound3D ["CG_Jobs\sounds\woodchop\woodchop1.ogg", player, false, getPosasl player, 2, 1, 15];
} else {
	_quality = _object getVariable ["quality",0];
	_object setVariable ["quality",(_quality - 1)];
	[(localize "STR_RPF_MODULES_FARMING_OHNO"), false] call ClientModules_Notification_fnc_doMsg;
	_randomValue = random 30;
	if(_randomValue < 5) exitwith { 
		[(localize "STR_RPF_MODULES_FARMING_YOUFAILED"), false] call ClientModules_Notification_fnc_doMsg;
		_object setVariable ["growing",false,true];
		removeAllActions _object;
		deleteVehicle _object;
	};
};

_object setVariable ["actionPerformed", true];
_object setVariable ["checkFinish",true];