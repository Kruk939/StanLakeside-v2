closeDialog 0;
createDialog "phonemsglist";
[] call ClientModules_Phone_fnc_loadSkin;
[player] remoteExecCall ["ServerModules_Phone_fnc_fetchMessages",2];