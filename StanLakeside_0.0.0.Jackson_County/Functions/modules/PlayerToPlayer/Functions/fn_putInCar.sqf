// put in vehicle CurrentCursorTarget;

private["_unit"];

_unit = CurrentCursorTarget;
if(isNull _unit OR !isPlayer _unit) exitWith {};
_nearestVehicle = nearestObjects[getPosATL _unit,["Car","Motorcycle","Bicycle","Motorbike","Ship","Submarine","Air"],10] select 0;
if(isNil "_nearestVehicle") exitWith {["Brak pojazdu do wejscia.", false] spawn ClientModules_Notification_fnc_doMsg;};
detach _unit;
[_nearestVehicle] remoteExec ["client_fnc_moveIn",_unit];
//[player,_unit,2,format ["%1 wrzucił %2 do pojazdu", name player, name _unit],""] remoteExec ["server_fnc_actionLog", 2];
