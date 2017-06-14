/*
Author: Kerkkoh
First Edit: 6.9.2016
*/
params ["_ct"];
private["_information", "_type"];
RPF_Cars deleteAt (RPF_Cars find _ct);
_information = _ct getVariable "public_veh_info";
_type = _information select 2;
if(_type == "garage") then {
	[_information select 0, 0, [_ct]call Client_fnc_vehicleHitGet, fuel _ct] remoteExecCall ["ServerModules_Garage_fnc_changeStatus", 2];
} else {
	["statuses", [_information select 0, 0, [_ct]call Client_fnc_vehicleHitGet, fuel _ct],"", player] remoteExecCall ["ServerModules_Company_fnc_garageUpdate", 2];
};
deleteVehicle _ct;
