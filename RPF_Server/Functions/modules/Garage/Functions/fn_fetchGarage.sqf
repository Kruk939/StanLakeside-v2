/*
Author: Kerkkoh
First Edit: 6.9.2016
*/
params["_ct","_player"];
private["_type","_vehicles"];
_type = "";
if ((typeOf _ct) find "Hangar_F" > -1) then {_type = "air";} else {_type = "car";};
if (str CurrentCursorTarget find "embarcadero" > -1 ) then {_type = "ship";};

_vehicles = [(format["garage_getVehicles:%1:%2:%3", getPlayerUID _player,0, _type]), 2] call ExternalS_fnc_ExtDBasync;

[_vehicles] remoteExecCall ["ClientModules_Garage_fnc_receiveGarage", _player];
