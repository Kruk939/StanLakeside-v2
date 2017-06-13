/*
Author: Kerkkoh
First Edit: 6.9.2016
*/
params ["_ct"];

RPF_Cars deleteAt (RPF_Cars find _ct);
_information = _ct getVariable "public_veh_info";
_type = _information select 2;
if(_type == "garage") then {
	[_information select 0, 0, [_ct]call Client_fnc_vehicleHitGet, fuel _ct] remoteExecCall ["ServerModules_Garage_fnc_changeStatus", 2];
} else {
	
};
deleteVehicle _ct;