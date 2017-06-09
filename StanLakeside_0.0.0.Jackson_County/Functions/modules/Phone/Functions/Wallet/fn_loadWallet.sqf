closeDialog 0;
createDialog "phonewallet";
[] call ClientModules_Phone_fnc_loadSkin;
disableSerialization;

ctrlSetText[1001,format[localize ("STR_RPF_MODULES_PHONE_WALLETDOLLAR"),player getVariable "cash"]];
ctrlSetText[1002,format[localize ("STR_RPF_MODULES_PHONE_WALLETDOLLAR"),player getVariable "bank"]];