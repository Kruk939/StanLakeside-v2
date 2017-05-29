params["_object"];
_checkFinish = _object getVariable["checkFinish",false];
_requiredAction = _object getVariable ["requiredOutput",""];

if(_checkFinish) exitWith {[(localize "STR_RPF_MODULES_FARMING_LOOKSGOOD"), false] call ClientModules_Notification_fnc_doMsg;};

_waterArray = [(localize "STR_RPF_MODULES_FARMING_WATERARRAY1"),(localize "STR_RPF_MODULES_FARMING_WATERARRAY2"), (localize "STR_RPF_MODULES_FARMING_WATERARRAY3")];
_pruneArray = [(localize "STR_RPF_MODULES_FARMING_PRUNEARRAY1"),(localize "STR_RPF_MODULES_FARMING_PRUNEARRAY2")];
_coolArray = [(localize "STR_RPF_MODULES_FARMING_COOLARRAY1"),(localize "STR_RPF_MODULES_FARMING_COOLARRAY2")];
_heatArray = [(localize "STR_RPF_MODULES_FARMING_HEATARRAY1"), (localize "STR_RPF_MODULES_FARMING_HEATARRAY2")];
_turnoverArray = [(localize "STR_RPF_MODULES_FARMING_TURNOVERARRAY1"), (localize "STR_RPF_MODULES_FARMING_TURNOVERARRAY2"), (localize "STR_RPF_MODULES_FARMING_TURNOVERARRAY3")];
_message = "";

switch(_requiredAction) do {
	case "Water": { _message = _waterArray call BIS_fnc_selectRandom; };
	case "Prune": { _message = _pruneArray call BIS_fnc_selectRandom; };
	case "Cool": { _message = _coolArray call BIS_fnc_selectRandom; };
	case "Heat": { _message = _heatArray call BIS_fnc_selectRandom; };
	case "Turnover": { _message = _turnoverArray call BIS_fnc_selectRandom; };
};
[_message, false] call ClientModules_Notification_fnc_doMsg;