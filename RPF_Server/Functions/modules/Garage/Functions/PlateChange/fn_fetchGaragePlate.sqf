params["_type","_player"];

_vehicles = [(format["garage_getVehicles:%1:%2:%3", getPlayerUID _player,0, _type]), 2] call ExternalS_fnc_ExtDBasync;

[_vehicles] remoteExecCall ["ClientModules_Garage_fnc_receiveGaragePlate", _player];