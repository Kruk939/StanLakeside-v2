/*
Author: Kerkkoh
First Edit: 6.12.2016
*/
_index = lbCurSel 1500;
if (_index == -1) exitWith {};
_dataS = lbData [1500, _index];
_data = call compile _dataS;

_player = RPF_Prisoners select _data;

[_player] remoteExecCall ["ServerModules_Jail_fnc_releaseFromJail", 2];

closeDialog 0;
[] call ClientModules_Jail_fnc_openFreePrisoners;
