params ["_type"];

createDialog "garagePlate";

[_type,player] remoteExecCall ["ServerModules_Garage_fnc_fetchGaragePlate", 2];