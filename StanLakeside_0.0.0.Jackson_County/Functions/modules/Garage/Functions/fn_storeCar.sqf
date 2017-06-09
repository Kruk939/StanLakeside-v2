/*
Author: Kerkkoh
First Edit: 6.9.2016
*/
params ["_ct"];

RPF_Cars deleteAt (RPF_Cars find _ct);
_information = _ct getVariable "information";

[_information select 0, 0, [_ct]call Client_fnc_vehicleHitGet, fuel _ct] remoteExecCall ["ServerModules_Garage_fnc_changeStatus", 2];

deleteVehicle _ct;