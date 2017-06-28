if (!call TFAR_fnc_haveSWRadio) exitWith {hint "Nie posiadasz telefonu!"};
if ((player getVariable ["phoneDarknet", 0]) > 0) exitWith {
	closeDialog 0;
	createDialog "phonedarknetmsglist";
	[] call ClientModules_Phone_fnc_loadSkin;
	[player] remoteExecCall ["ServerModules_Phone_fnc_fetchDarknetMessages",2];
};