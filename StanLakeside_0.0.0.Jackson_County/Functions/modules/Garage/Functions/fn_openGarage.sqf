/*
Author: Kerkkoh
First Edit: 6.9.2016
*/
params ["_ct"];

createDialog "garage";

[_ct,player] remoteExecCall ["ServerModules_Garage_fnc_fetchGarage", 2];