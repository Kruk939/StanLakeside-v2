if (!call TFAR_fnc_haveSWRadio) exitWith {hint "Nie posiadasz telefonu!"};
closeDialog 0;
createDialog "phoneadvertsmsglist";
[] call ClientModules_Phone_fnc_loadSkin;
[player] remoteExecCall ["ServerModules_Phone_fnc_fetchAdvertsMessages",2];