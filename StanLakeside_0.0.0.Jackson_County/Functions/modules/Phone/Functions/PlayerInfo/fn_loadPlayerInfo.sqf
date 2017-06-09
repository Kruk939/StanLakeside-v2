closeDialog 0;
createDialog "phoneplayerinfo";
[] call ClientModules_Phone_fnc_loadSkin;
disableSerialization;

ctrlSetText[1002,format["%1",player getVariable "phoneNumber"]];
ctrlSetText[1004,format["%1 $",player getVariable "phoneBalance"]];
ctrlSetText[1006,format["%1",player getVariable "bankAccount"]];