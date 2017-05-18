private["_myInjuries","_force"];
params[["_force",false]];

if (time - medical_lastUpdate < medical_updateTime && !_force) exitWith {};
medical_lastUpdate = time;
_myInjuries = player getVariable["medical_playerInjuries_toUpdate", [0,0,0,0,0,0,0,0,0,0,0]];
player setVariable["medical_playerInjuries",_myInjuries, true];
//Wyslanie aktualizacji na serwer
["all",[getPlayerUID player, medical_myHealth, medical_deadPlayer, medical_bleedingEffect, _myInjuries],"",player] remoteExec ["ServerModules_Medical_fnc_update"];
