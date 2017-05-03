params["_object"];
_checkFinish = _object getVariable["checkFinish",false];
_requiredAction = _object getVariable ["requiredOutput",""];

if(_checkFinish) exitWith {["Roślina wygląda wporządku.", false] spawn ClientModules_Notification_fnc_doMsg;};

_waterArray = ["UWAGA: Liście opadly!","UWAGA: Roslina zwiedla!", "UWAGA: Gleba jest sucha"];
_pruneArray = ["UWAGA: Roslina chyba jest za duza!","UWAGA: Roślina wygląda na przerośniętą!"];
_coolArray = ["UWAGA: Na liściach widać brązowe plamy!","UWAGA: Roślina ma za dużą temperaturę!"];
_heatArray = ["UWAGA: Roslina gnije!", "UWAGA: Gleba jest zbyt wilgotna!"];
_turnoverArray = ["UWAGA: Trzeba przerzucić glebę!", "UWAGA: Trzeba napowietrzyć glebę!", "UWAGA: Ziemia jest bardzo ubita!"];
_message = "";

switch(_requiredAction) do {
	case "Water": { _message = _waterArray call BIS_fnc_selectRandom; };
	case "Prune": { _message = _pruneArray call BIS_fnc_selectRandom; };
	case "Cool": { _message = _coolArray call BIS_fnc_selectRandom; };
	case "Heat": { _message = _heatArray call BIS_fnc_selectRandom; };
	case "Turnover": { _message = _turnoverArray call BIS_fnc_selectRandom; };
};
[_message, false] spawn ClientModules_Notification_fnc_doMsg;