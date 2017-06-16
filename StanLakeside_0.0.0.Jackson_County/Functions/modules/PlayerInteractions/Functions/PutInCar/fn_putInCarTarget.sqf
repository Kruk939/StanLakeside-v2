params[["_target", objNull]];

player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
uiSleep 4;

if(isNull _target OR !isPlayer _target) exitWith {};

_nearestVehicle = nearestObjects[getPosATL _target,["Car","Motorcycle","Bicycle","Motorbike","Ship","Submarine","Air"],10] select 0;
if(isNil "_nearestVehicle") exitWith {hint "Nie ma w pobliżu żadnego pojazdu!";};
detach _target;
[_nearestVehicle] remoteExec ["client_fnc_moveIn",_target];