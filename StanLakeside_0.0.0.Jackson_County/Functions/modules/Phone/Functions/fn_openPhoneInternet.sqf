if (!call TFAR_fnc_haveSWRadio) exitWith {hint "Nie posiadasz telefonu!"};
closeDialog 0;
createDialog "phoneinternet";
[] call ClientModules_Phone_fnc_loadSkin;
ctrlEnable [1602, false];
if ((player getVariable ["phoneDarknet", 0]) > 0) exitWith {
	ctrlSetText[1205,"SL_Client\Textures\Dialogs\Phone\Icons\anonymous.paa"];
	ctrlEnable [1602, true];
};